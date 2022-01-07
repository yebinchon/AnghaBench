; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-exec.c_PQcopyResult.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-exec.c_PQcopyResult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i64, %struct.TYPE_16__*, i32, i32, %struct.TYPE_13__**, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32 (i32, %struct.TYPE_15__*, i32)* }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i32, i32 }

@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@PG_COPYRES_ATTRS = common dso_local global i32 0, align 4
@PG_COPYRES_TUPLES = common dso_local global i32 0, align 4
@PG_COPYRES_NOTICEHOOKS = common dso_local global i32 0, align 4
@PG_COPYRES_EVENTS = common dso_local global i32 0, align 4
@PGEVT_RESULTCOPY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @PQcopyResult(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %12 = icmp ne %struct.TYPE_14__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %219

14:                                               ; preds = %2
  %15 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %16 = call %struct.TYPE_14__* @PQmakeEmptyPGresult(i32* null, i32 %15)
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %6, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %18 = icmp ne %struct.TYPE_14__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %219

20:                                               ; preds = %14
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 9
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 9
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @strcpy(i32 %28, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @PG_COPYRES_ATTRS, align 4
  %35 = load i32, i32* @PG_COPYRES_TUPLES, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %33, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %20
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @PQsetResultAttrs(%struct.TYPE_14__* %40, i32 %43, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %39
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %51 = call i32 @PQclear(%struct.TYPE_14__* %50)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %219

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52, %20
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @PG_COPYRES_TUPLES, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %114

58:                                               ; preds = %53
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %110, %58
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %113

65:                                               ; preds = %59
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %106, %65
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %109

72:                                               ; preds = %66
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 6
  %78 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %78, i64 %80
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 6
  %90 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %90, i64 %92
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @PQsetvalue(%struct.TYPE_14__* %73, i32 %74, i32 %75, i32 %87, i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %72
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %104 = call i32 @PQclear(%struct.TYPE_14__* %103)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %219

105:                                              ; preds = %72
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %9, align 4
  br label %66

109:                                              ; preds = %66
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %8, align 4
  br label %59

113:                                              ; preds = %59
  br label %114

114:                                              ; preds = %113, %53
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @PG_COPYRES_NOTICEHOOKS, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 5
  store i32 %122, i32* %124, align 4
  br label %125

125:                                              ; preds = %119, %114
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* @PG_COPYRES_EVENTS, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %160

130:                                              ; preds = %125
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = icmp sgt i64 %133, 0
  br i1 %134, label %135, label %160

135:                                              ; preds = %130
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %137, align 8
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 4
  %144 = call %struct.TYPE_16__* @dupEvents(%struct.TYPE_16__* %138, i64 %141, i32* %143)
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 3
  store %struct.TYPE_16__* %144, %struct.TYPE_16__** %146, align 8
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 3
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %148, align 8
  %150 = icmp ne %struct.TYPE_16__* %149, null
  br i1 %150, label %154, label %151

151:                                              ; preds = %135
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %153 = call i32 @PQclear(%struct.TYPE_14__* %152)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %219

154:                                              ; preds = %135
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 2
  store i64 %157, i64* %159, align 8
  br label %160

160:                                              ; preds = %154, %130, %125
  store i32 0, i32* %7, align 4
  br label %161

161:                                              ; preds = %214, %160
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = icmp slt i64 %163, %166
  br i1 %167, label %168, label %217

168:                                              ; preds = %161
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 3
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %170, align 8
  %172 = load i32, i32* %7, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %213

178:                                              ; preds = %168
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  store %struct.TYPE_14__* %179, %struct.TYPE_14__** %180, align 8
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  store %struct.TYPE_14__* %181, %struct.TYPE_14__** %182, align 8
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 3
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %184, align 8
  %186 = load i32, i32* %7, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 2
  %190 = load i32 (i32, %struct.TYPE_15__*, i32)*, i32 (i32, %struct.TYPE_15__*, i32)** %189, align 8
  %191 = load i32, i32* @PGEVT_RESULTCOPY, align 4
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 3
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %193, align 8
  %195 = load i32, i32* %7, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = call i32 %190(i32 %191, %struct.TYPE_15__* %10, i32 %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %178
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %204 = call i32 @PQclear(%struct.TYPE_14__* %203)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %219

205:                                              ; preds = %178
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 3
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %207, align 8
  %209 = load i32, i32* %7, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 0
  store i32 1, i32* %212, align 8
  br label %213

213:                                              ; preds = %205, %168
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %7, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %7, align 4
  br label %161

217:                                              ; preds = %161
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %218, %struct.TYPE_14__** %3, align 8
  br label %219

219:                                              ; preds = %217, %202, %151, %102, %49, %19, %13
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  ret %struct.TYPE_14__* %220
}

declare dso_local %struct.TYPE_14__* @PQmakeEmptyPGresult(i32*, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @PQsetResultAttrs(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @PQclear(%struct.TYPE_14__*) #1

declare dso_local i32 @PQsetvalue(%struct.TYPE_14__*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_16__* @dupEvents(%struct.TYPE_16__*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
