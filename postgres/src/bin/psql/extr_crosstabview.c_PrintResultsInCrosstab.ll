; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_crosstabview.c_PrintResultsInCrosstab.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_crosstabview.c_PrintResultsInCrosstab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32** }
%struct.TYPE_7__ = type { i32, i32 }

@PGRES_TUPLES_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"\\crosstabview: statement did not return a result set\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"\\crosstabview: query must return at least three columns\00", align 1
@pset = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [73 x i8] c"\\crosstabview: vertical and horizontal headers must be different columns\00", align 1
@.str.3 = private unnamed_addr constant [88 x i8] c"\\crosstabview: data column must be specified when query returns more than three columns\00", align 1
@CROSSTABVIEW_MAX_COLUMNS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [55 x i8] c"\\crosstabview: maximum number of columns (%d) exceeded\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PrintResultsInCrosstab(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__, align 4
  %5 = alloca %struct.TYPE_7__, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %18 = call i32 @avlInit(%struct.TYPE_7__* %5)
  %19 = call i32 @avlInit(%struct.TYPE_7__* %4)
  %20 = load i32*, i32** %2, align 8
  %21 = call i64 @PQresultStatus(i32* %20)
  %22 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %236

26:                                               ; preds = %1
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @PQnfields(i32* %27)
  %29 = icmp slt i32 %28, 3
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  br label %236

32:                                               ; preds = %26
  %33 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @pset, i32 0, i32 0), align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 0, i32* %10, align 4
  br label %48

38:                                               ; preds = %32
  %39 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @pset, i32 0, i32 0), align 8
  %40 = getelementptr inbounds i32*, i32** %39, i64 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @indexOfColumn(i32* %41, i32* %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %236

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %37
  %49 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @pset, i32 0, i32 0), align 8
  %50 = getelementptr inbounds i32*, i32** %49, i64 1
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 1, i32* %11, align 4
  br label %64

54:                                               ; preds = %48
  %55 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @pset, i32 0, i32 0), align 8
  %56 = getelementptr inbounds i32*, i32** %55, i64 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32*, i32** %2, align 8
  %59 = call i32 @indexOfColumn(i32* %57, i32* %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %236

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63, %53
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0))
  br label %236

70:                                               ; preds = %64
  %71 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @pset, i32 0, i32 0), align 8
  %72 = getelementptr inbounds i32*, i32** %71, i64 2
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %106

75:                                               ; preds = %70
  %76 = load i32*, i32** %2, align 8
  %77 = call i32 @PQnfields(i32* %76)
  %78 = icmp ne i32 %77, 3
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.3, i64 0, i64 0))
  br label %236

81:                                               ; preds = %75
  store i32 -1, i32* %12, align 4
  store i32 0, i32* %15, align 4
  br label %82

82:                                               ; preds = %98, %81
  %83 = load i32, i32* %15, align 4
  %84 = load i32*, i32** %2, align 8
  %85 = call i32 @PQnfields(i32* %84)
  %86 = icmp slt i32 %83, %85
  br i1 %86, label %87, label %101

87:                                               ; preds = %82
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i32, i32* %15, align 4
  store i32 %96, i32* %12, align 4
  br label %101

97:                                               ; preds = %91, %87
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %15, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %15, align 4
  br label %82

101:                                              ; preds = %95, %82
  %102 = load i32, i32* %12, align 4
  %103 = icmp sge i32 %102, 0
  %104 = zext i1 %103 to i32
  %105 = call i32 @Assert(i32 %104)
  br label %116

106:                                              ; preds = %70
  %107 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @pset, i32 0, i32 0), align 8
  %108 = getelementptr inbounds i32*, i32** %107, i64 2
  %109 = load i32*, i32** %108, align 8
  %110 = load i32*, i32** %2, align 8
  %111 = call i32 @indexOfColumn(i32* %109, i32* %110)
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %12, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  br label %236

115:                                              ; preds = %106
  br label %116

116:                                              ; preds = %115, %101
  %117 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @pset, i32 0, i32 0), align 8
  %118 = getelementptr inbounds i32*, i32** %117, i64 3
  %119 = load i32*, i32** %118, align 8
  %120 = icmp eq i32* %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  store i32 -1, i32* %13, align 4
  br label %132

122:                                              ; preds = %116
  %123 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @pset, i32 0, i32 0), align 8
  %124 = getelementptr inbounds i32*, i32** %123, i64 3
  %125 = load i32*, i32** %124, align 8
  %126 = load i32*, i32** %2, align 8
  %127 = call i32 @indexOfColumn(i32* %125, i32* %126)
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* %13, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %122
  br label %236

131:                                              ; preds = %122
  br label %132

132:                                              ; preds = %131, %121
  store i32 0, i32* %14, align 4
  br label %133

133:                                              ; preds = %192, %132
  %134 = load i32, i32* %14, align 4
  %135 = load i32*, i32** %2, align 8
  %136 = call i32 @PQntuples(i32* %135)
  %137 = icmp slt i32 %134, %136
  br i1 %137, label %138, label %195

138:                                              ; preds = %133
  %139 = load i32*, i32** %2, align 8
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* %11, align 4
  %142 = call i64 @PQgetisnull(i32* %139, i32 %140, i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  br label %150

145:                                              ; preds = %138
  %146 = load i32*, i32** %2, align 8
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %11, align 4
  %149 = call i8* @PQgetvalue(i32* %146, i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %145, %144
  %151 = phi i8* [ null, %144 ], [ %149, %145 ]
  store i8* %151, i8** %16, align 8
  store i8* null, i8** %17, align 8
  %152 = load i32, i32* %13, align 4
  %153 = icmp sge i32 %152, 0
  br i1 %153, label %154, label %165

154:                                              ; preds = %150
  %155 = load i32*, i32** %2, align 8
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* %13, align 4
  %158 = call i64 @PQgetisnull(i32* %155, i32 %156, i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %165, label %160

160:                                              ; preds = %154
  %161 = load i32*, i32** %2, align 8
  %162 = load i32, i32* %14, align 4
  %163 = load i32, i32* %13, align 4
  %164 = call i8* @PQgetvalue(i32* %161, i32 %162, i32 %163)
  store i8* %164, i8** %17, align 8
  br label %165

165:                                              ; preds = %160, %154, %150
  %166 = load i8*, i8** %16, align 8
  %167 = load i8*, i8** %17, align 8
  %168 = call i32 @avlMergeValue(%struct.TYPE_7__* %4, i8* %166, i8* %167)
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @CROSSTABVIEW_MAX_COLUMNS, align 4
  %172 = icmp sgt i32 %170, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %165
  %174 = load i32, i32* @CROSSTABVIEW_MAX_COLUMNS, align 4
  %175 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %174)
  br label %236

176:                                              ; preds = %165
  %177 = load i32*, i32** %2, align 8
  %178 = load i32, i32* %14, align 4
  %179 = load i32, i32* %10, align 4
  %180 = call i64 @PQgetisnull(i32* %177, i32 %178, i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %176
  br label %188

183:                                              ; preds = %176
  %184 = load i32*, i32** %2, align 8
  %185 = load i32, i32* %14, align 4
  %186 = load i32, i32* %10, align 4
  %187 = call i8* @PQgetvalue(i32* %184, i32 %185, i32 %186)
  br label %188

188:                                              ; preds = %183, %182
  %189 = phi i8* [ null, %182 ], [ %187, %183 ]
  store i8* %189, i8** %16, align 8
  %190 = load i8*, i8** %16, align 8
  %191 = call i32 @avlMergeValue(%struct.TYPE_7__* %5, i8* %190, i8* null)
  br label %192

192:                                              ; preds = %188
  %193 = load i32, i32* %14, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %14, align 4
  br label %133

195:                                              ; preds = %133
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  store i32 %197, i32* %8, align 4
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  store i32 %199, i32* %9, align 4
  %200 = load i32, i32* %8, align 4
  %201 = sext i32 %200 to i64
  %202 = mul i64 4, %201
  %203 = trunc i64 %202 to i32
  %204 = call i64 @pg_malloc(i32 %203)
  %205 = inttoptr i64 %204 to i32*
  store i32* %205, i32** %6, align 8
  %206 = load i32, i32* %9, align 4
  %207 = sext i32 %206 to i64
  %208 = mul i64 4, %207
  %209 = trunc i64 %208 to i32
  %210 = call i64 @pg_malloc(i32 %209)
  %211 = inttoptr i64 %210 to i32*
  store i32* %211, i32** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load i32*, i32** %6, align 8
  %215 = call i32 @avlCollectFields(%struct.TYPE_7__* %4, i32 %213, i32* %214, i32 0)
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load i32*, i32** %7, align 8
  %219 = call i32 @avlCollectFields(%struct.TYPE_7__* %5, i32 %217, i32* %218, i32 0)
  %220 = load i32, i32* %13, align 4
  %221 = icmp sge i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %195
  %223 = load i32, i32* %8, align 4
  %224 = load i32*, i32** %6, align 8
  %225 = call i32 @rankSort(i32 %223, i32* %224)
  br label %226

226:                                              ; preds = %222, %195
  %227 = load i32*, i32** %2, align 8
  %228 = load i32, i32* %8, align 4
  %229 = load i32*, i32** %6, align 8
  %230 = load i32, i32* %11, align 4
  %231 = load i32, i32* %9, align 4
  %232 = load i32*, i32** %7, align 8
  %233 = load i32, i32* %10, align 4
  %234 = load i32, i32* %12, align 4
  %235 = call i32 @printCrosstab(i32* %227, i32 %228, i32* %229, i32 %230, i32 %231, i32* %232, i32 %233, i32 %234)
  store i32 %235, i32* %3, align 4
  br label %236

236:                                              ; preds = %226, %173, %130, %114, %79, %68, %62, %46, %30, %24
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @avlFree(%struct.TYPE_7__* %4, i32 %238)
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @avlFree(%struct.TYPE_7__* %5, i32 %241)
  %243 = load i32*, i32** %6, align 8
  %244 = call i32 @pg_free(i32* %243)
  %245 = load i32*, i32** %7, align 8
  %246 = call i32 @pg_free(i32* %245)
  %247 = load i32, i32* %3, align 4
  ret i32 %247
}

declare dso_local i32 @avlInit(%struct.TYPE_7__*) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @pg_log_error(i8*, ...) #1

declare dso_local i32 @PQnfields(i32*) #1

declare dso_local i32 @indexOfColumn(i32*, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i64 @PQgetisnull(i32*, i32, i32) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @avlMergeValue(%struct.TYPE_7__*, i8*, i8*) #1

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i32 @avlCollectFields(%struct.TYPE_7__*, i32, i32*, i32) #1

declare dso_local i32 @rankSort(i32, i32*) #1

declare dso_local i32 @printCrosstab(i32*, i32, i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @avlFree(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @pg_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
