; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_sr98.c_sr98_read_emid.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_sr98.c_sr98_read_emid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@SR98_IOCTL_EMID_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i32] [i32 82, i32 101, i32 99, i32 101, i32 105, i32 118, i32 101, i32 100, i32 32, i32 115, i32 105, i32 122, i32 101, i32 32, i32 105, i32 115, i32 32, i32 110, i32 111, i32 116, i32 32, i32 54, i32 32, i32 40, i32 48, i32 120, i32 37, i32 48, i32 50, i32 120, i32 41, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sr98_read_emid(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @SR98_IOCTL_EMID_READ, align 4
  %11 = call i64 @sr98_send_receive(i32 %9, i32 %10, i32* null, i32 0, i32** %6, i32* %7)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, 6
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %5, align 4
  br i1 %15, label %17, label %22

17:                                               ; preds = %13
  %18 = load i32*, i32** %4, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = call i32 @RtlCopyMemory(i32* %18, i32* %20, i32 5)
  br label %25

22:                                               ; preds = %13
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @PRINT_ERROR(i8* bitcast ([33 x i32]* @.str to i8*), i32 %23)
  br label %25

25:                                               ; preds = %22, %17
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @LocalFree(i32* %26)
  br label %28

28:                                               ; preds = %25, %2
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i64 @sr98_send_receive(i32, i32, i32*, i32, i32**, i32*) #1

declare dso_local i32 @RtlCopyMemory(i32*, i32*, i32) #1

declare dso_local i32 @PRINT_ERROR(i8*, i32) #1

declare dso_local i32 @LocalFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
