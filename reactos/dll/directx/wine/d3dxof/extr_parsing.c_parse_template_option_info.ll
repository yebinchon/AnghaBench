; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dxof/extr_parsing.c_parse_template_option_info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dxof/extr_parsing.c_parse_template_option_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i8*, i32* }

@TOKEN_DOT = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@TOKEN_NAME = common dso_local global i64 0, align 8
@TOKEN_GUID = common dso_local global i64 0, align 8
@TOKEN_COMMA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_9__*)* @parse_template_option_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_template_option_info(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i64 %14
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %4, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = call i64 @check_TOKEN(%struct.TYPE_9__* %16)
  %18 = load i64, i64* @TOKEN_DOT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %1
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = call i64 @get_TOKEN(%struct.TYPE_9__* %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = call i64 @get_TOKEN(%struct.TYPE_9__* %23)
  %25 = load i64, i64* @TOKEN_DOT, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i8*, i8** @FALSE, align 8
  store i8* %28, i8** %2, align 8
  br label %88

29:                                               ; preds = %20
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = call i64 @get_TOKEN(%struct.TYPE_9__* %30)
  %32 = load i64, i64* @TOKEN_DOT, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i8*, i8** @FALSE, align 8
  store i8* %35, i8** %2, align 8
  br label %88

36:                                               ; preds = %29
  %37 = load i8*, i8** @TRUE, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  br label %86

40:                                               ; preds = %1
  br label %41

41:                                               ; preds = %40, %79
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = call i64 @get_TOKEN(%struct.TYPE_9__* %42)
  %44 = load i64, i64* @TOKEN_NAME, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i8*, i8** @FALSE, align 8
  store i8* %47, i8** %2, align 8
  br label %88

48:                                               ; preds = %41
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = call i32 @strcpy(i32 %56, i8* %60)
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %63 = call i64 @check_TOKEN(%struct.TYPE_9__* %62)
  %64 = load i64, i64* @TOKEN_GUID, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %48
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %68 = call i64 @get_TOKEN(%struct.TYPE_9__* %67)
  br label %69

69:                                               ; preds = %66, %48
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %71, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %75 = call i64 @check_TOKEN(%struct.TYPE_9__* %74)
  %76 = load i64, i64* @TOKEN_COMMA, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  br label %82

79:                                               ; preds = %69
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %81 = call i64 @get_TOKEN(%struct.TYPE_9__* %80)
  br label %41

82:                                               ; preds = %78
  %83 = load i8*, i8** @FALSE, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  store i8* %83, i8** %85, align 8
  br label %86

86:                                               ; preds = %82, %36
  %87 = load i8*, i8** @TRUE, align 8
  store i8* %87, i8** %2, align 8
  br label %88

88:                                               ; preds = %86, %46, %34, %27
  %89 = load i8*, i8** %2, align 8
  ret i8* %89
}

declare dso_local i64 @check_TOKEN(%struct.TYPE_9__*) #1

declare dso_local i64 @get_TOKEN(%struct.TYPE_9__*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
