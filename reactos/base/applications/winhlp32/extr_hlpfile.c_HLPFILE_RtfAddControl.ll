; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_HLPFILE_RtfAddControl.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_HLPFILE_RtfAddControl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RtfData = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.RtfData*, i8*)* @HLPFILE_RtfAddControl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HLPFILE_RtfAddControl(%struct.RtfData* %0, i8* %1) #0 {
  %3 = alloca %struct.RtfData*, align 8
  %4 = alloca i8*, align 8
  store %struct.RtfData* %0, %struct.RtfData** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = call i32 @debugstr_a(i8* %5)
  %7 = call i32 @WINE_TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load i8*, i8** %4, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 92
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 123
  br i1 %16, label %17, label %21

17:                                               ; preds = %12, %2
  %18 = load i32, i32* @FALSE, align 4
  %19 = load %struct.RtfData*, %struct.RtfData** %3, align 8
  %20 = getelementptr inbounds %struct.RtfData, %struct.RtfData* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  br label %31

21:                                               ; preds = %12
  %22 = load i8*, i8** %4, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 125
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @TRUE, align 4
  %28 = load %struct.RtfData*, %struct.RtfData** %3, align 8
  %29 = getelementptr inbounds %struct.RtfData, %struct.RtfData* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %21
  br label %31

31:                                               ; preds = %30, %17
  %32 = load %struct.RtfData*, %struct.RtfData** %3, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = call i32 @HLPFILE_RtfAddRawString(%struct.RtfData* %32, i8* %33, i32 %35)
  ret i32 %36
}

declare dso_local i32 @WINE_TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_a(i8*) #1

declare dso_local i32 @HLPFILE_RtfAddRawString(%struct.RtfData*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
