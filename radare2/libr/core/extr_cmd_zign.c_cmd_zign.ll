; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_zign.c_cmd_zign.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_zign.c_cmd_zign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"k anal/zigns/*\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@help_msg_z = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmd_zign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_zign(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  switch i32 %11, label %77 [
    i32 0, label %12
    i32 42, label %12
    i32 113, label %12
    i32 106, label %12
    i32 107, label %20
    i32 45, label %23
    i32 46, label %30
    i32 111, label %35
    i32 103, label %40
    i32 97, label %43
    i32 102, label %48
    i32 47, label %53
    i32 99, label %58
    i32 115, label %63
    i32 105, label %68
    i32 63, label %73
  ]

12:                                               ; preds = %2, %2, %2, %2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = call i32 @r_sign_list(i32 %15, i8 signext %18)
  br label %81

20:                                               ; preds = %2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = call i32 @r_core_cmd0(%struct.TYPE_4__* %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %81

23:                                               ; preds = %2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = call i32 @r_sign_delete(i32 %26, i8* %28)
  br label %81

30:                                               ; preds = %2
  %31 = load i8*, i8** %4, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = call i32 @cmdCheck(i8* %31, i8* %33)
  store i32 %34, i32* %3, align 4
  br label %82

35:                                               ; preds = %2
  %36 = load i8*, i8** %4, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = call i32 @cmdOpen(i8* %36, i8* %38)
  store i32 %39, i32* %3, align 4
  br label %82

40:                                               ; preds = %2
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @cmdAdd(i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %42, i32* %3, align 4
  br label %82

43:                                               ; preds = %2
  %44 = load i8*, i8** %4, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = call i32 @cmdAdd(i8* %44, i8* %46)
  store i32 %47, i32* %3, align 4
  br label %82

48:                                               ; preds = %2
  %49 = load i8*, i8** %4, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = call i32 @cmdFlirt(i8* %49, i8* %51)
  store i32 %52, i32* %3, align 4
  br label %82

53:                                               ; preds = %2
  %54 = load i8*, i8** %4, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = call i32 @cmdSearch(i8* %54, i8* %56)
  store i32 %57, i32* %3, align 4
  br label %82

58:                                               ; preds = %2
  %59 = load i8*, i8** %4, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = call i32 @cmdCompare(i8* %59, i8* %61)
  store i32 %62, i32* %3, align 4
  br label %82

63:                                               ; preds = %2
  %64 = load i8*, i8** %4, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = call i32 @cmdSpace(i8* %64, i8* %66)
  store i32 %67, i32* %3, align 4
  br label %82

68:                                               ; preds = %2
  %69 = load i8*, i8** %4, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = call i32 @cmdInfo(i8* %69, i8* %71)
  store i32 %72, i32* %3, align 4
  br label %82

73:                                               ; preds = %2
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %75 = load i32, i32* @help_msg_z, align 4
  %76 = call i32 @r_core_cmd_help(%struct.TYPE_4__* %74, i32 %75)
  br label %81

77:                                               ; preds = %2
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %79 = load i32, i32* @help_msg_z, align 4
  %80 = call i32 @r_core_cmd_help(%struct.TYPE_4__* %78, i32 %79)
  store i32 0, i32* %3, align 4
  br label %82

81:                                               ; preds = %73, %23, %20, %12
  store i32 1, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %77, %68, %63, %58, %53, %48, %43, %40, %35, %30
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @r_sign_list(i32, i8 signext) #1

declare dso_local i32 @r_core_cmd0(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @r_sign_delete(i32, i8*) #1

declare dso_local i32 @cmdCheck(i8*, i8*) #1

declare dso_local i32 @cmdOpen(i8*, i8*) #1

declare dso_local i32 @cmdAdd(i8*, i8*) #1

declare dso_local i32 @cmdFlirt(i8*, i8*) #1

declare dso_local i32 @cmdSearch(i8*, i8*) #1

declare dso_local i32 @cmdCompare(i8*, i8*) #1

declare dso_local i32 @cmdSpace(i8*, i8*) #1

declare dso_local i32 @cmdInfo(i8*, i8*) #1

declare dso_local i32 @r_core_cmd_help(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
