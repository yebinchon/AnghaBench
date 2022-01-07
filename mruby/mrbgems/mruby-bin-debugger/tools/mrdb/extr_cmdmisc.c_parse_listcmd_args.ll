; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_cmdmisc.c_parse_listcmd_args.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_cmdmisc.c_parse_listcmd_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i8**, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_10__ = type { i32, i32, i32*, i8*, i32, i32 }

@TRUE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"too many arguments\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c".rb\00", align 1
@FALSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, %struct.TYPE_9__*, %struct.TYPE_10__*)* @parse_listcmd_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_listcmd_args(i32* %0, %struct.TYPE_9__* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %57 [
    i32 2, label %12
    i32 1, label %56
    i32 0, label %56
  ]

12:                                               ; preds = %3
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load i8**, i8*** %14, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %8, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %20 = call i32 @parse_lineno(i32* %18, i8** %8, %struct.TYPE_10__* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %46, label %22

22:                                               ; preds = %12
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %25 = call i32 @parse_filename(i32* %23, i8** %8, %struct.TYPE_10__* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  %28 = call i32 @skip_char(i8** %8, i8 signext 58)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load i32*, i32** %5, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %33 = call i32 @parse_lineno(i32* %31, i8** %8, %struct.TYPE_10__* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load i8*, i8** @TRUE, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  br label %39

39:                                               ; preds = %35, %30
  br label %40

40:                                               ; preds = %39, %27
  br label %45

41:                                               ; preds = %22
  %42 = load i8*, i8** @TRUE, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  br label %45

45:                                               ; preds = %41, %40
  br label %46

46:                                               ; preds = %45, %12
  %47 = load i8*, i8** %8, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i8*, i8** @TRUE, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  br label %55

55:                                               ; preds = %51, %46
  br label %62

56:                                               ; preds = %3, %3
  br label %62

57:                                               ; preds = %3
  %58 = load i8*, i8** @TRUE, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  %61 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %57, %56, %55
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 3
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %140, label %67

67:                                               ; preds = %62
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %96, label %72

72:                                               ; preds = %67
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %90, label %77

77:                                               ; preds = %72
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp sgt i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %77
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  br label %91

90:                                               ; preds = %77, %72
  br label %91

91:                                               ; preds = %90, %84
  %92 = phi i64 [ %89, %84 ], [ 1, %90 ]
  %93 = trunc i64 %92 to i32
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  br label %96

96:                                               ; preds = %91, %67
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %96
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, 9
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %101, %96
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = icmp eq i32* %111, null
  br i1 %112, label %113, label %139

113:                                              ; preds = %108
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %138

120:                                              ; preds = %113
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = call i64 @strcmp(i64 %125, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %120
  %129 = load i32*, i32** %5, align 8
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = call i32* @replace_ext(i32* %129, i64 %134, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 2
  store i32* %135, i32** %137, align 8
  br label %138

138:                                              ; preds = %128, %120, %113
  br label %139

139:                                              ; preds = %138, %108
  br label %140

140:                                              ; preds = %139, %62
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 3
  %143 = load i8*, i8** %142, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %150, label %145

145:                                              ; preds = %140
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = icmp eq i32* %148, null
  br i1 %149, label %150, label %152

150:                                              ; preds = %145, %140
  %151 = load i8*, i8** @FALSE, align 8
  store i8* %151, i8** %4, align 8
  br label %154

152:                                              ; preds = %145
  %153 = load i8*, i8** @TRUE, align 8
  store i8* %153, i8** %4, align 8
  br label %154

154:                                              ; preds = %152, %150
  %155 = load i8*, i8** %4, align 8
  ret i8* %155
}

declare dso_local i32 @parse_lineno(i32*, i8**, %struct.TYPE_10__*) #1

declare dso_local i32 @parse_filename(i32*, i8**, %struct.TYPE_10__*) #1

declare dso_local i32 @skip_char(i8**, i8 signext) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @strcmp(i64, i8*) #1

declare dso_local i32* @replace_ext(i32*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
