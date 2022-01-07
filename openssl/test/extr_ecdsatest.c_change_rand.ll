; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ecdsatest.c_change_rand.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ecdsatest.c_change_rand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@old_rand = common dso_local global %struct.TYPE_6__* null, align 8
@fake_rand = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@fbytes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @change_rand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @change_rand() #0 {
  %1 = alloca i32, align 4
  %2 = call %struct.TYPE_6__* (...) @RAND_get_rand_method()
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** @old_rand, align 8
  %3 = call i32 @TEST_ptr(%struct.TYPE_6__* %2)
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %15

6:                                                ; preds = %0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @old_rand, align 8
  %8 = bitcast %struct.TYPE_6__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_6__* @fake_rand to i8*), i8* align 4 %8, i64 4, i1 false)
  %9 = load i32, i32* @fbytes, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fake_rand, i32 0, i32 0), align 4
  %10 = call i32 @RAND_set_rand_method(%struct.TYPE_6__* @fake_rand)
  %11 = call i32 @TEST_true(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  store i32 0, i32* %1, align 4
  br label %15

14:                                               ; preds = %6
  store i32 1, i32* %1, align 4
  br label %15

15:                                               ; preds = %14, %13, %5
  %16 = load i32, i32* %1, align 4
  ret i32 %16
}

declare dso_local i32 @TEST_ptr(%struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_6__* @RAND_get_rand_method(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @RAND_set_rand_method(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
