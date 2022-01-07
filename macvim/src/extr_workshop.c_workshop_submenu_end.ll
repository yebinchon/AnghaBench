; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_workshop.c_workshop_submenu_end.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_workshop.c_workshop_submenu_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@curMenuPriority = common dso_local global i32 0, align 4
@NUL = common dso_local global i8 0, align 1
@curMenuName = common dso_local global i32 0, align 4
@WS_TRACE = common dso_local global i32 0, align 4
@WS_TRACE_VERBOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @workshop_submenu_end() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* @curMenuPriority, align 4
  %3 = call i8* @strrchr(i32 %2, i8 signext 46)
  store i8* %3, i8** %1, align 8
  %4 = load i8*, i8** %1, align 8
  %5 = icmp ne i8* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @ASSERT(i32 %6)
  %8 = load i8, i8* @NUL, align 1
  %9 = load i8*, i8** %1, align 8
  store i8 %8, i8* %9, align 1
  %10 = load i32, i32* @curMenuName, align 4
  %11 = call i8* @strrchr(i32 %10, i8 signext 46)
  store i8* %11, i8** %1, align 8
  %12 = load i8*, i8** %1, align 8
  %13 = icmp ne i8* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load i8, i8* @NUL, align 1
  %17 = load i8*, i8** %1, align 8
  store i8 %16, i8* %17, align 1
  ret void
}

declare dso_local i8* @strrchr(i32, i8 signext) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
