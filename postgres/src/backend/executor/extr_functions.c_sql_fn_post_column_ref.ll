; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_functions.c_sql_fn_post_column_ref.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_functions.c_sql_fn_post_column_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@A_Star = common dso_local global i32 0, align 4
@String = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__*, %struct.TYPE_10__*, i32*)* @sql_fn_post_column_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @sql_fn_post_column_ref(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %8, align 8
  store i32* null, i32** %11, align 8
  store i8* null, i8** %13, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %153

23:                                               ; preds = %3
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @list_length(i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp sgt i32 %28, 3
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32* null, i32** %4, align 8
  br label %153

31:                                               ; preds = %23
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32* @llast(i32 %34)
  %36 = load i32, i32* @A_Star, align 4
  %37 = call i64 @IsA(i32* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %39, %31
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @linitial(i32 %45)
  %47 = inttoptr i64 %46 to i32*
  store i32* %47, i32** %10, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* @String, align 4
  %50 = call i64 @IsA(i32* %48, i32 %49)
  %51 = call i32 @Assert(i64 %50)
  %52 = load i32*, i32** %10, align 8
  %53 = call i8* @strVal(i32* %52)
  store i8* %53, i8** %12, align 8
  %54 = load i32, i32* %9, align 4
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %68

56:                                               ; preds = %42
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @lsecond(i32 %59)
  %61 = inttoptr i64 %60 to i32*
  store i32* %61, i32** %11, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* @String, align 4
  %64 = call i64 @IsA(i32* %62, i32 %63)
  %65 = call i32 @Assert(i64 %64)
  %66 = load i32*, i32** %11, align 8
  %67 = call i8* @strVal(i32* %66)
  store i8* %67, i8** %13, align 8
  br label %68

68:                                               ; preds = %56, %42
  %69 = load i32, i32* %9, align 4
  %70 = icmp eq i32 %69, 3
  br i1 %70, label %71, label %95

71:                                               ; preds = %68
  %72 = load i8*, i8** %12, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @strcmp(i8* %72, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  store i32* null, i32** %4, align 8
  br label %153

79:                                               ; preds = %71
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %81 = load i8*, i8** %13, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32* @sql_fn_resolve_param_name(%struct.TYPE_8__* %80, i8* %81, i32 %84)
  store i32* %85, i32** %14, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @lthird(i32 %88)
  %90 = inttoptr i64 %89 to i32*
  store i32* %90, i32** %11, align 8
  %91 = load i32*, i32** %11, align 8
  %92 = load i32, i32* @String, align 4
  %93 = call i64 @IsA(i32* %91, i32 %92)
  %94 = call i32 @Assert(i64 %93)
  br label %131

95:                                               ; preds = %68
  %96 = load i32, i32* %9, align 4
  %97 = icmp eq i32 %96, 2
  br i1 %97, label %98, label %123

98:                                               ; preds = %95
  %99 = load i8*, i8** %12, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @strcmp(i8* %99, i32 %102)
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %123

105:                                              ; preds = %98
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %107 = load i8*, i8** %13, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32* @sql_fn_resolve_param_name(%struct.TYPE_8__* %106, i8* %107, i32 %110)
  store i32* %111, i32** %14, align 8
  %112 = load i32*, i32** %14, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %115

114:                                              ; preds = %105
  store i32* null, i32** %11, align 8
  br label %122

115:                                              ; preds = %105
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %117 = load i8*, i8** %12, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32* @sql_fn_resolve_param_name(%struct.TYPE_8__* %116, i8* %117, i32 %120)
  store i32* %121, i32** %14, align 8
  br label %122

122:                                              ; preds = %115, %114
  br label %130

123:                                              ; preds = %98, %95
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %125 = load i8*, i8** %12, align 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32* @sql_fn_resolve_param_name(%struct.TYPE_8__* %124, i8* %125, i32 %128)
  store i32* %129, i32** %14, align 8
  br label %130

130:                                              ; preds = %123, %122
  br label %131

131:                                              ; preds = %130, %79
  %132 = load i32*, i32** %14, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %131
  store i32* null, i32** %4, align 8
  br label %153

135:                                              ; preds = %131
  %136 = load i32*, i32** %11, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %151

138:                                              ; preds = %135
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %140 = load i32*, i32** %11, align 8
  %141 = call i32 @list_make1(i32* %140)
  %142 = load i32*, i32** %14, align 8
  %143 = call i32 @list_make1(i32* %142)
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32* @ParseFuncOrColumn(%struct.TYPE_9__* %139, i32 %141, i32 %143, i32 %146, i32* null, i32 0, i32 %149)
  store i32* %150, i32** %14, align 8
  br label %151

151:                                              ; preds = %138, %135
  %152 = load i32*, i32** %14, align 8
  store i32* %152, i32** %4, align 8
  br label %153

153:                                              ; preds = %151, %134, %78, %30, %22
  %154 = load i32*, i32** %4, align 8
  ret i32* %154
}

declare dso_local i32 @list_length(i32) #1

declare dso_local i64 @IsA(i32*, i32) #1

declare dso_local i32* @llast(i32) #1

declare dso_local i64 @linitial(i32) #1

declare dso_local i32 @Assert(i64) #1

declare dso_local i8* @strVal(i32*) #1

declare dso_local i64 @lsecond(i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32* @sql_fn_resolve_param_name(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i64 @lthird(i32) #1

declare dso_local i32* @ParseFuncOrColumn(%struct.TYPE_9__*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @list_make1(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
