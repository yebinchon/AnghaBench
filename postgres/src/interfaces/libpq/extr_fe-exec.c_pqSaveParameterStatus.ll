; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-exec.c_pqSaveParameterStatus.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-exec.c_pqSaveParameterStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i8*, i8*, %struct.TYPE_5__* }

@.str = private unnamed_addr constant [36 x i8] c"pqSaveParameterStatus: '%s' = '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"client_encoding\00", align 1
@PG_SQL_ASCII = common dso_local global i64 0, align 8
@static_client_encoding = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"standard_conforming_strings\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@static_std_strings = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"server_version\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%d.%d.%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pqSaveParameterStatus(%struct.TYPE_6__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @fprintf(i64 %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %22, i8* %23)
  br label %25

25:                                               ; preds = %18, %3
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %8, align 8
  br label %29

29:                                               ; preds = %58, %25
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %31 = icmp ne %struct.TYPE_5__* %30, null
  br i1 %31, label %32, label %63

32:                                               ; preds = %29
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = call i64 @strcmp(i8* %35, i8* %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %32
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %41 = icmp ne %struct.TYPE_5__* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  store %struct.TYPE_5__* %45, %struct.TYPE_5__** %47, align 8
  br label %54

48:                                               ; preds = %39
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 3
  store %struct.TYPE_5__* %51, %struct.TYPE_5__** %53, align 8
  br label %54

54:                                               ; preds = %48, %42
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %56 = call i32 @free(%struct.TYPE_5__* %55)
  br label %63

57:                                               ; preds = %32
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %59, %struct.TYPE_5__** %8, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  store %struct.TYPE_5__* %62, %struct.TYPE_5__** %7, align 8
  br label %29

63:                                               ; preds = %54, %29
  %64 = load i8*, i8** %5, align 8
  %65 = call i64 @strlen(i8* %64)
  %66 = add i64 24, %65
  %67 = load i8*, i8** %6, align 8
  %68 = call i64 @strlen(i8* %67)
  %69 = add i64 %66, %68
  %70 = add i64 %69, 2
  %71 = call i64 @malloc(i64 %70)
  %72 = inttoptr i64 %71 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %72, %struct.TYPE_5__** %7, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %74 = icmp ne %struct.TYPE_5__* %73, null
  br i1 %74, label %75, label %104

75:                                               ; preds = %63
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %77 = bitcast %struct.TYPE_5__* %76 to i8*
  %78 = getelementptr inbounds i8, i8* %77, i64 24
  store i8* %78, i8** %9, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = load i8*, i8** %5, align 8
  %84 = call i32 @strcpy(i8* %82, i8* %83)
  %85 = load i8*, i8** %5, align 8
  %86 = call i64 @strlen(i8* %85)
  %87 = add nsw i64 %86, 1
  %88 = load i8*, i8** %9, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 %87
  store i8* %89, i8** %9, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = call i32 @strcpy(i8* %93, i8* %94)
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 2
  store %struct.TYPE_5__* %98, %struct.TYPE_5__** %100, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 3
  store %struct.TYPE_5__* %101, %struct.TYPE_5__** %103, align 8
  br label %104

104:                                              ; preds = %75, %63
  %105 = load i8*, i8** %5, align 8
  %106 = call i64 @strcmp(i8* %105, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %125

108:                                              ; preds = %104
  %109 = load i8*, i8** %6, align 8
  %110 = call i64 @pg_char_to_encoding(i8* %109)
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  store i64 %110, i64* %112, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %108
  %118 = load i64, i64* @PG_SQL_ASCII, align 8
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  br label %121

121:                                              ; preds = %117, %108
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* @static_client_encoding, align 8
  br label %196

125:                                              ; preds = %104
  %126 = load i8*, i8** %5, align 8
  %127 = call i64 @strcmp(i8* %126, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %125
  %130 = load i8*, i8** %6, align 8
  %131 = call i64 @strcmp(i8* %130, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %132 = icmp eq i64 %131, 0
  %133 = zext i1 %132 to i32
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 8
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  store i32 %138, i32* @static_std_strings, align 4
  br label %195

139:                                              ; preds = %125
  %140 = load i8*, i8** %5, align 8
  %141 = call i64 @strcmp(i8* %140, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %194

143:                                              ; preds = %139
  %144 = load i8*, i8** %6, align 8
  %145 = call i32 @sscanf(i8* %144, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32* %11, i32* %12, i32* %13)
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* %10, align 4
  %147 = icmp eq i32 %146, 3
  br i1 %147, label %148, label %158

148:                                              ; preds = %143
  %149 = load i32, i32* %11, align 4
  %150 = mul nsw i32 100, %149
  %151 = load i32, i32* %12, align 4
  %152 = add nsw i32 %150, %151
  %153 = mul nsw i32 %152, 100
  %154 = load i32, i32* %13, align 4
  %155 = add nsw i32 %153, %154
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 4
  br label %193

158:                                              ; preds = %143
  %159 = load i32, i32* %10, align 4
  %160 = icmp eq i32 %159, 2
  br i1 %160, label %161, label %180

161:                                              ; preds = %158
  %162 = load i32, i32* %11, align 4
  %163 = icmp sge i32 %162, 10
  br i1 %163, label %164, label %171

164:                                              ; preds = %161
  %165 = load i32, i32* %11, align 4
  %166 = mul nsw i32 10000, %165
  %167 = load i32, i32* %12, align 4
  %168 = add nsw i32 %166, %167
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 2
  store i32 %168, i32* %170, align 4
  br label %179

171:                                              ; preds = %161
  %172 = load i32, i32* %11, align 4
  %173 = mul nsw i32 100, %172
  %174 = load i32, i32* %12, align 4
  %175 = add nsw i32 %173, %174
  %176 = mul nsw i32 %175, 100
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 2
  store i32 %176, i32* %178, align 4
  br label %179

179:                                              ; preds = %171, %164
  br label %192

180:                                              ; preds = %158
  %181 = load i32, i32* %10, align 4
  %182 = icmp eq i32 %181, 1
  br i1 %182, label %183, label %188

183:                                              ; preds = %180
  %184 = load i32, i32* %11, align 4
  %185 = mul nsw i32 10000, %184
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 2
  store i32 %185, i32* %187, align 4
  br label %191

188:                                              ; preds = %180
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 2
  store i32 0, i32* %190, align 4
  br label %191

191:                                              ; preds = %188, %183
  br label %192

192:                                              ; preds = %191, %179
  br label %193

193:                                              ; preds = %192, %148
  br label %194

194:                                              ; preds = %193, %139
  br label %195

195:                                              ; preds = %194, %129
  br label %196

196:                                              ; preds = %195, %121
  ret void
}

declare dso_local i32 @fprintf(i64, i8*, i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @pg_char_to_encoding(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
