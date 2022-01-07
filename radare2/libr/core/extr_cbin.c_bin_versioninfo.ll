; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cbin.c_bin_versioninfo.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cbin.c_bin_versioninfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"pe\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"elf\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"mach0\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Unknown format\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32)* @bin_versioninfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bin_versioninfo(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.TYPE_9__* @r_bin_get_info(i32 %9)
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %6, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %12 = icmp ne %struct.TYPE_9__* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13, %2
  store i32 0, i32* %3, align 4
  br label %53

19:                                               ; preds = %13
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @strncmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %22, i32 2)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @bin_pe_versioninfo(%struct.TYPE_8__* %26, i32 %27)
  br label %52

29:                                               ; preds = %19
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 3)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @bin_elf_versioninfo(%struct.TYPE_8__* %36, i32 %37)
  br label %51

39:                                               ; preds = %29
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @strncmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %42, i32 5)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = call i32 @bin_mach0_versioninfo(%struct.TYPE_8__* %46)
  br label %50

48:                                               ; preds = %39
  %49 = call i32 @r_cons_println(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %53

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50, %35
  br label %52

52:                                               ; preds = %51, %25
  store i32 1, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %48, %18
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.TYPE_9__* @r_bin_get_info(i32) #1

declare dso_local i32 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @bin_pe_versioninfo(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @bin_elf_versioninfo(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @bin_mach0_versioninfo(%struct.TYPE_8__*) #1

declare dso_local i32 @r_cons_println(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
