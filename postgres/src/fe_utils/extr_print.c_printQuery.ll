; ModuleID = '/home/carl/AnghaBench/postgres/src/fe_utils/extr_print.c_printQuery.c'
source_filename = "/home/carl/AnghaBench/postgres/src/fe_utils/extr_print.c_printQuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i8*, i8**, i64*, %struct.TYPE_13__, i32, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32, i8* }

@cancel_pressed = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printQuery(i32* %0, %struct.TYPE_12__* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_11__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8**, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %19 = load i64, i64* @cancel_pressed, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  br label %176

22:                                               ; preds = %5
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @PQnfields(i32* %28)
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @PQntuples(i32* %30)
  %32 = call i32 @printTableInit(%struct.TYPE_11__* %11, %struct.TYPE_13__* %24, i32 %27, i32 %29, i32 %31)
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 3
  %35 = load i64*, i64** %34, align 8
  %36 = icmp eq i64* %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %22
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp sge i32 %40, %42
  br label %44

44:                                               ; preds = %37, %22
  %45 = phi i1 [ true, %22 ], [ %43, %37 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @Assert(i32 %46)
  store i32 0, i32* %12, align 4
  br label %48

48:                                               ; preds = %65, %44
  %49 = load i32, i32* %12, align 4
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %48
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @PQfname(i32* %54, i32 %55)
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @PQftype(i32* %60, i32 %61)
  %63 = call i32 @column_type_alignment(i32 %62)
  %64 = call i32 @printTableAddHeader(%struct.TYPE_11__* %11, i32 %56, i32 %59, i32 %63)
  br label %65

65:                                               ; preds = %53
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %12, align 4
  br label %48

68:                                               ; preds = %48
  store i32 0, i32* %13, align 4
  br label %69

69:                                               ; preds = %146, %68
  %70 = load i32, i32* %13, align 4
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %70, %72
  br i1 %73, label %74, label %149

74:                                               ; preds = %69
  store i32 0, i32* %14, align 4
  br label %75

75:                                               ; preds = %142, %74
  %76 = load i32, i32* %14, align 4
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %76, %78
  br i1 %79, label %80, label %145

80:                                               ; preds = %75
  store i32 0, i32* %16, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* %14, align 4
  %84 = call i64 @PQgetisnull(i32* %81, i32 %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %80
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  br label %96

95:                                               ; preds = %86
  br label %96

96:                                               ; preds = %95, %91
  %97 = phi i8* [ %94, %91 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %95 ]
  store i8* %97, i8** %15, align 8
  br label %121

98:                                               ; preds = %80
  %99 = load i32*, i32** %6, align 8
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %14, align 4
  %102 = call i8* @PQgetvalue(i32* %99, i32 %100, i32 %101)
  store i8* %102, i8** %15, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = load i32, i32* %14, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 114
  br i1 %110, label %111, label %120

111:                                              ; preds = %98
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = load i8*, i8** %15, align 8
  %119 = call i8* @format_numeric_locale(i8* %118)
  store i8* %119, i8** %15, align 8
  store i32 1, i32* %16, align 4
  br label %120

120:                                              ; preds = %117, %111, %98
  br label %121

121:                                              ; preds = %120, %96
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 3
  %124 = load i64*, i64** %123, align 8
  %125 = icmp ne i64* %124, null
  br i1 %125, label %126, label %135

126:                                              ; preds = %121
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 3
  %129 = load i64*, i64** %128, align 8
  %130 = load i32, i32* %14, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64, i64* %129, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br label %135

135:                                              ; preds = %126, %121
  %136 = phi i1 [ false, %121 ], [ %134, %126 ]
  %137 = zext i1 %136 to i32
  store i32 %137, i32* %17, align 4
  %138 = load i8*, i8** %15, align 8
  %139 = load i32, i32* %17, align 4
  %140 = load i32, i32* %16, align 4
  %141 = call i32 @printTableAddCell(%struct.TYPE_11__* %11, i8* %138, i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %135
  %143 = load i32, i32* %14, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %14, align 4
  br label %75

145:                                              ; preds = %75
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %13, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %13, align 4
  br label %69

149:                                              ; preds = %69
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 2
  %152 = load i8**, i8*** %151, align 8
  %153 = icmp ne i8** %152, null
  br i1 %153, label %154, label %170

154:                                              ; preds = %149
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 2
  %157 = load i8**, i8*** %156, align 8
  store i8** %157, i8*** %18, align 8
  br label %158

158:                                              ; preds = %166, %154
  %159 = load i8**, i8*** %18, align 8
  %160 = load i8*, i8** %159, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %169

162:                                              ; preds = %158
  %163 = load i8**, i8*** %18, align 8
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 @printTableAddFooter(%struct.TYPE_11__* %11, i8* %164)
  br label %166

166:                                              ; preds = %162
  %167 = load i8**, i8*** %18, align 8
  %168 = getelementptr inbounds i8*, i8** %167, i32 1
  store i8** %168, i8*** %18, align 8
  br label %158

169:                                              ; preds = %158
  br label %170

170:                                              ; preds = %169, %149
  %171 = load i32*, i32** %8, align 8
  %172 = load i32, i32* %9, align 4
  %173 = load i32*, i32** %10, align 8
  %174 = call i32 @printTable(%struct.TYPE_11__* %11, i32* %171, i32 %172, i32* %173)
  %175 = call i32 @printTableCleanup(%struct.TYPE_11__* %11)
  br label %176

176:                                              ; preds = %170, %21
  ret void
}

declare dso_local i32 @printTableInit(%struct.TYPE_11__*, %struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @PQnfields(i32*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @printTableAddHeader(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @PQfname(i32*, i32) #1

declare dso_local i32 @column_type_alignment(i32) #1

declare dso_local i32 @PQftype(i32*, i32) #1

declare dso_local i64 @PQgetisnull(i32*, i32, i32) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i8* @format_numeric_locale(i8*) #1

declare dso_local i32 @printTableAddCell(%struct.TYPE_11__*, i8*, i32, i32) #1

declare dso_local i32 @printTableAddFooter(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @printTable(%struct.TYPE_11__*, i32*, i32, i32*) #1

declare dso_local i32 @printTableCleanup(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
