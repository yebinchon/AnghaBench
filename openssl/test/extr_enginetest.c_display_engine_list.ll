; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_enginetest.c_display_engine_list.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_enginetest.c_display_engine_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"#%d: id = \22%s\22, name = \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @display_engine_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @display_engine_list() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = call i32* (...) @ENGINE_get_first()
  store i32* %3, i32** %1, align 8
  br label %4

4:                                                ; preds = %15, %0
  %5 = load i32*, i32** %1, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %18

7:                                                ; preds = %4
  %8 = load i32, i32* %2, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %2, align 4
  %10 = load i32*, i32** %1, align 8
  %11 = call i32 @ENGINE_get_id(i32* %10)
  %12 = load i32*, i32** %1, align 8
  %13 = call i32 @ENGINE_get_name(i32* %12)
  %14 = call i32 @TEST_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %11, i32 %13)
  br label %15

15:                                               ; preds = %7
  %16 = load i32*, i32** %1, align 8
  %17 = call i32* @ENGINE_get_next(i32* %16)
  store i32* %17, i32** %1, align 8
  br label %4

18:                                               ; preds = %4
  %19 = load i32*, i32** %1, align 8
  %20 = call i32 @ENGINE_free(i32* %19)
  ret void
}

declare dso_local i32* @ENGINE_get_first(...) #1

declare dso_local i32 @TEST_info(i8*, i32, i32, i32) #1

declare dso_local i32 @ENGINE_get_id(i32*) #1

declare dso_local i32 @ENGINE_get_name(i32*) #1

declare dso_local i32* @ENGINE_get_next(i32*) #1

declare dso_local i32 @ENGINE_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
