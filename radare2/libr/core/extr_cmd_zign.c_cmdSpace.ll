; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_zign.c_cmdSpace.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_zign.c_cmdSpace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"usage: zs+zignspace\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"usage: zsr newname\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"usage: zs zignspace\0A\00", align 1
@help_msg_zs = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"usage: zs[+-*] [namespace]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmdSpace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmdSpace(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %6, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32* %13, i32** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  switch i32 %16, label %94 [
    i32 43, label %17
    i32 114, label %29
    i32 45, label %47
    i32 106, label %72
    i32 42, label %72
    i32 0, label %72
    i32 32, label %78
    i32 63, label %90
  ]

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = load i8, i8* %19, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = call i32 @eprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %97

24:                                               ; preds = %17
  %25 = load i32*, i32** %7, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = call i32 @r_spaces_push(i32* %25, i8* %27)
  br label %96

29:                                               ; preds = %2
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 32
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 2
  %38 = load i8, i8* %37, align 1
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %35, %29
  %41 = call i32 @eprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %97

42:                                               ; preds = %35
  %43 = load i32*, i32** %7, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 2
  %46 = call i32 @r_spaces_rename(i32* %43, i32* null, i8* %45)
  br label %96

47:                                               ; preds = %2
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @r_spaces_pop(i32* %54)
  br label %71

56:                                               ; preds = %47
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 42
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @r_spaces_unset(i32* %63, i8* null)
  br label %70

65:                                               ; preds = %56
  %66 = load i32*, i32** %7, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = call i32 @r_spaces_unset(i32* %66, i8* %68)
  br label %70

70:                                               ; preds = %65, %62
  br label %71

71:                                               ; preds = %70, %53
  br label %96

72:                                               ; preds = %2, %2, %2
  %73 = load i32*, i32** %7, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = load i8, i8* %75, align 1
  %77 = call i32 @spaces_list(i32* %73, i8 signext %76)
  br label %96

78:                                               ; preds = %2
  %79 = load i8*, i8** %5, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  %81 = load i8, i8* %80, align 1
  %82 = icmp ne i8 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %78
  %84 = call i32 @eprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %97

85:                                               ; preds = %78
  %86 = load i32*, i32** %7, align 8
  %87 = load i8*, i8** %5, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  %89 = call i32 @r_spaces_set(i32* %86, i8* %88)
  br label %96

90:                                               ; preds = %2
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %92 = load i32, i32* @help_msg_zs, align 4
  %93 = call i32 @r_core_cmd_help(%struct.TYPE_5__* %91, i32 %92)
  br label %96

94:                                               ; preds = %2
  %95 = call i32 @eprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %97

96:                                               ; preds = %90, %85, %72, %71, %42, %24
  store i32 1, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %94, %83, %40, %22
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @r_spaces_push(i32*, i8*) #1

declare dso_local i32 @r_spaces_rename(i32*, i32*, i8*) #1

declare dso_local i32 @r_spaces_pop(i32*) #1

declare dso_local i32 @r_spaces_unset(i32*, i8*) #1

declare dso_local i32 @spaces_list(i32*, i8 signext) #1

declare dso_local i32 @r_spaces_set(i32*, i8*) #1

declare dso_local i32 @r_core_cmd_help(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
