; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_esil.c_esil_set_jump_target_set.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_esil.c_esil_set_jump_target_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"esil_set_jump_target_set: empty stack\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @esil_set_jump_target_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esil_set_jump_target_set(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = call i8* @r_anal_esil_pop(%struct.TYPE_5__* %6)
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @r_anal_esil_get_parm(%struct.TYPE_5__* %11, i8* %12, i32* %4)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  store i32 1, i32* %3, align 4
  br label %23

19:                                               ; preds = %10, %1
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @R_FREE(i8* %20)
  %22 = call i32 @ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %19, %15
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @free(i8* %24)
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i8* @r_anal_esil_pop(%struct.TYPE_5__*) #1

declare dso_local i64 @r_anal_esil_get_parm(%struct.TYPE_5__*, i8*, i32*) #1

declare dso_local i32 @R_FREE(i8*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
