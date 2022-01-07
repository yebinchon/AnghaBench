; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_plpgsql_param_fetch.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_plpgsql_param_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i64, i64 }
%struct.TYPE_19__ = type { i32, i8*, i64, i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_25__** }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_21__ = type { i64, i32, i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }

@InvalidOid = common dso_local global i32 0, align 4
@PARAM_FLAG_CONST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_19__* (%struct.TYPE_18__*, i32, i32, %struct.TYPE_19__*)* @plpgsql_param_fetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_19__* @plpgsql_param_fetch(%struct.TYPE_18__* %0, i32 %1, i32 %2, %struct.TYPE_19__* %3) #0 {
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca %struct.TYPE_25__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_21__*, align 8
  %17 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %9, align 8
  store i32 1, i32* %14, align 4
  %18 = load i32, i32* %7, align 4
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %4
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br label %28

28:                                               ; preds = %22, %4
  %29 = phi i1 [ false, %4 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @Assert(i32 %30)
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %35, %struct.TYPE_24__** %11, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %39, %struct.TYPE_23__** %12, align 8
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %42, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @Assert(i32 %47)
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %51, i64 %53
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %54, align 8
  store %struct.TYPE_25__* %55, %struct.TYPE_25__** %13, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @bms_is_member(i32 %56, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %28
  store i32 0, i32* %14, align 4
  br label %129

63:                                               ; preds = %28
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %128

66:                                               ; preds = %63
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  switch i32 %69, label %126 [
    i32 128, label %70
    i32 132, label %70
    i32 129, label %71
    i32 131, label %72
    i32 130, label %73
  ]

70:                                               ; preds = %66, %66
  br label %127

71:                                               ; preds = %66
  br label %127

72:                                               ; preds = %66
  br label %127

73:                                               ; preds = %66
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %75 = bitcast %struct.TYPE_25__* %74 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %75, %struct.TYPE_21__** %16, align 8
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %77, align 8
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %78, i64 %81
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %82, align 8
  %84 = bitcast %struct.TYPE_25__* %83 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %84, %struct.TYPE_22__** %17, align 8
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %86, align 8
  %88 = icmp eq %struct.TYPE_16__* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %73
  store i32 0, i32* %14, align 4
  br label %125

90:                                               ; preds = %73
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %93, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @unlikely(i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %124

103:                                              ; preds = %90
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %105, align 8
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 2
  %112 = call i32 @expanded_record_lookup_field(%struct.TYPE_16__* %106, i32 %109, i32* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %103
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 8
  br label %123

122:                                              ; preds = %103
  store i32 0, i32* %14, align 4
  br label %123

123:                                              ; preds = %122, %114
  br label %124

124:                                              ; preds = %123, %90
  br label %125

125:                                              ; preds = %124, %89
  br label %127

126:                                              ; preds = %66
  store i32 0, i32* %14, align 4
  br label %127

127:                                              ; preds = %126, %125, %72, %71, %70
  br label %128

128:                                              ; preds = %127, %63
  br label %129

129:                                              ; preds = %128, %62
  %130 = load i32, i32* %14, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %143, label %132

132:                                              ; preds = %129
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 1
  store i8* null, i8** %134, align 8
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 0
  store i32 1, i32* %136, align 8
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 2
  store i64 0, i64* %138, align 8
  %139 = load i32, i32* @InvalidOid, align 4
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 3
  store i32 %139, i32* %141, align 8
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  store %struct.TYPE_19__* %142, %struct.TYPE_19__** %5, align 8
  br label %201

143:                                              ; preds = %129
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 3
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 0
  %152 = call i32 @exec_eval_datum(%struct.TYPE_24__* %144, %struct.TYPE_25__* %145, i32* %147, i32* %15, i8** %149, i32* %151)
  %153 = load i64, i64* @PARAM_FLAG_CONST, align 8
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 2
  store i64 %153, i64* %155, align 8
  %156 = load i32, i32* %10, align 4
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %156, %159
  br i1 %160, label %161, label %199

161:                                              ; preds = %143
  %162 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %163 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = icmp eq i32 %164, 128
  br i1 %165, label %166, label %182

166:                                              ; preds = %161
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 1
  %169 = load i8*, i8** %168, align 8
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %174 = bitcast %struct.TYPE_25__* %173 to %struct.TYPE_20__*
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i8* @MakeExpandedObjectReadOnly(i8* %169, i32 %172, i32 %178)
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 1
  store i8* %179, i8** %181, align 8
  br label %198

182:                                              ; preds = %161
  %183 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %184 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = icmp eq i32 %185, 131
  br i1 %186, label %187, label %197

187:                                              ; preds = %182
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 1
  %190 = load i8*, i8** %189, align 8
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i8* @MakeExpandedObjectReadOnly(i8* %190, i32 %193, i32 -1)
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 1
  store i8* %194, i8** %196, align 8
  br label %197

197:                                              ; preds = %187, %182
  br label %198

198:                                              ; preds = %197, %166
  br label %199

199:                                              ; preds = %198, %143
  %200 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  store %struct.TYPE_19__* %200, %struct.TYPE_19__** %5, align 8
  br label %201

201:                                              ; preds = %199, %132
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  ret %struct.TYPE_19__* %202
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @bms_is_member(i32, i32) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @expanded_record_lookup_field(%struct.TYPE_16__*, i32, i32*) #1

declare dso_local i32 @exec_eval_datum(%struct.TYPE_24__*, %struct.TYPE_25__*, i32*, i32*, i8**, i32*) #1

declare dso_local i8* @MakeExpandedObjectReadOnly(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
