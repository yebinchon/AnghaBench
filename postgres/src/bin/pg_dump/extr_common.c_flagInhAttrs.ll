; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_common.c_flagInhAttrs.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_common.c_flagInhAttrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i32, i32*, i32*, %struct.TYPE_12__**, %struct.TYPE_10__, i32*, i64*, %struct.TYPE_11__** }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_13__, i8*, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i64, i32, i8*, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_10__ = type { i8*, i32, i64, i32 }

@RELKIND_SEQUENCE = common dso_local global i64 0, align 8
@RELKIND_VIEW = common dso_local global i64 0, align 8
@RELKIND_MATVIEW = common dso_local global i64 0, align 8
@DO_ATTRDEF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_11__*, i32)* @flagInhAttrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flagInhAttrs(i32* %0, %struct.TYPE_11__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %231, %3
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %234

22:                                               ; preds = %18
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i64 %25
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %10, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @RELKIND_SEQUENCE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %44, label %32

32:                                               ; preds = %22
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @RELKIND_VIEW, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @RELKIND_MATVIEW, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38, %32, %22
  br label %231

45:                                               ; preds = %38
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 6
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  br label %231

52:                                               ; preds = %45
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %11, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 9
  %58 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %57, align 8
  store %struct.TYPE_11__** %58, %struct.TYPE_11__*** %12, align 8
  %59 = load i32, i32* %11, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %231

62:                                               ; preds = %52
  store i32 0, i32* %8, align 4
  br label %63

63:                                               ; preds = %227, %62
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %230

69:                                               ; preds = %63
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 8
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  br label %227

79:                                               ; preds = %69
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %9, align 4
  br label %80

80:                                               ; preds = %128, %79
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %131

84:                                               ; preds = %80
  %85 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %12, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %85, i64 %87
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  store %struct.TYPE_11__* %89, %struct.TYPE_11__** %15, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 7
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 7
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @strInArray(i32 %96, i32* %99, i32 %102)
  store i32 %103, i32* %16, align 4
  %104 = load i32, i32* %16, align 4
  %105 = icmp sge i32 %104, 0
  br i1 %105, label %106, label %127

106:                                              ; preds = %84
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %16, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %13, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %13, align 4
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 5
  %118 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %117, align 8
  %119 = load i32, i32* %16, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %118, i64 %120
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %121, align 8
  %123 = icmp ne %struct.TYPE_12__* %122, null
  %124 = zext i1 %123 to i32
  %125 = load i32, i32* %14, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %14, align 4
  br label %127

127:                                              ; preds = %106, %84
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %9, align 4
  br label %80

131:                                              ; preds = %80
  %132 = load i32, i32* %13, align 4
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 4
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  store i32 %132, i32* %138, align 4
  %139 = load i32, i32* %14, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %226

141:                                              ; preds = %131
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 5
  %144 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %143, align 8
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %144, i64 %146
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %147, align 8
  %149 = icmp eq %struct.TYPE_12__* %148, null
  br i1 %149, label %150, label %226

150:                                              ; preds = %141
  %151 = call i64 @pg_malloc(i32 72)
  %152 = inttoptr i64 %151 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %152, %struct.TYPE_12__** %17, align 8
  %153 = load i32, i32* @DO_ATTRDEF, align 4
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 4
  store i32 %153, i32* %156, align 8
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  store i64 0, i64* %160, align 8
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  store i64 0, i64* %164, align 8
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 2
  %167 = call i32 @AssignDumpId(%struct.TYPE_13__* %166)
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 6
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = call i8* @pg_strdup(i8* %171)
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 2
  store i8* %172, i8** %175, align 8
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 6
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 1
  store i32 %179, i32* %182, align 8
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 6
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 0
  store i64 %186, i64* %189, align 8
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 4
  store %struct.TYPE_11__* %190, %struct.TYPE_11__** %192, align 8
  %193 = load i32, i32* %8, align 4
  %194 = add nsw i32 %193, 1
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 0
  store i32 %194, i32* %196, align 8
  %197 = call i8* @pg_strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 3
  store i8* %197, i8** %199, align 8
  %200 = load i32*, i32** %4, align 8
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %202 = load i32, i32* %8, align 4
  %203 = call i64 @shouldPrintColumn(i32* %200, %struct.TYPE_11__* %201, i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %150
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 1
  store i32 0, i32* %207, align 4
  br label %218

208:                                              ; preds = %150
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 1
  store i32 1, i32* %210, align 4
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 2
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 6
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @addObjectDependency(%struct.TYPE_13__* %212, i32 %216)
  br label %218

218:                                              ; preds = %208, %205
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 5
  %222 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %221, align 8
  %223 = load i32, i32* %8, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %222, i64 %224
  store %struct.TYPE_12__* %219, %struct.TYPE_12__** %225, align 8
  br label %226

226:                                              ; preds = %218, %141, %131
  br label %227

227:                                              ; preds = %226, %78
  %228 = load i32, i32* %8, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %8, align 4
  br label %63

230:                                              ; preds = %63
  br label %231

231:                                              ; preds = %230, %61, %51, %44
  %232 = load i32, i32* %7, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %7, align 4
  br label %18

234:                                              ; preds = %18
  ret void
}

declare dso_local i32 @strInArray(i32, i32*, i32) #1

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i32 @AssignDumpId(%struct.TYPE_13__*) #1

declare dso_local i8* @pg_strdup(i8*) #1

declare dso_local i64 @shouldPrintColumn(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @addObjectDependency(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
