; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_cycle.c_ngx_shared_memory_add.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_cycle.c_ngx_shared_memory_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i8*, i64, i32*, %struct.TYPE_15__, i32* }
%struct.TYPE_15__ = type { i64, i64, %struct.TYPE_16__, i32*, i32 }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, %struct.TYPE_17__*, %struct.TYPE_18__* }

@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"the shared memory zone \22%V\22 is already declared for a different use\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"the size %uz of shared memory zone \22%V\22 conflicts with already declared size %uz\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @ngx_shared_memory_add(%struct.TYPE_19__* %0, %struct.TYPE_16__* %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  store %struct.TYPE_18__* %17, %struct.TYPE_18__** %12, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  store %struct.TYPE_17__* %20, %struct.TYPE_17__** %11, align 8
  store i64 0, i64* %10, align 8
  br label %21

21:                                               ; preds = %134, %4
  %22 = load i64, i64* %10, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp uge i64 %22, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %21
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %31 = icmp eq %struct.TYPE_18__* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %137

33:                                               ; preds = %27
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %35, align 8
  store %struct.TYPE_18__* %36, %struct.TYPE_18__** %12, align 8
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %38, align 8
  store %struct.TYPE_17__* %39, %struct.TYPE_17__** %11, align 8
  store i64 0, i64* %10, align 8
  br label %40

40:                                               ; preds = %33, %21
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %43, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  br label %134

53:                                               ; preds = %40
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %58 = load i64, i64* %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @ngx_strncmp(i32 %56, i32 %63, i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %53
  br label %134

70:                                               ; preds = %53
  %71 = load i8*, i8** %9, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %73 = load i64, i64* %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %71, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %70
  %79 = load i32, i32* @NGX_LOG_EMERG, align 4
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %82 = load i64, i64* %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 2
  %86 = call i32 (i32, %struct.TYPE_19__*, i32, i8*, ...) @ngx_conf_log_error(i32 %79, %struct.TYPE_19__* %80, i32 0, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), %struct.TYPE_16__* %85)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %5, align 8
  br label %181

87:                                               ; preds = %70
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %89 = load i64, i64* %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %87
  %96 = load i64, i64* %8, align 8
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %98 = load i64, i64* %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  store i64 %96, i64* %101, align 8
  br label %102

102:                                              ; preds = %95, %87
  %103 = load i64, i64* %8, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %130

105:                                              ; preds = %102
  %106 = load i64, i64* %8, align 8
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %108 = load i64, i64* %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %106, %112
  br i1 %113, label %114, label %130

114:                                              ; preds = %105
  %115 = load i32, i32* @NGX_LOG_EMERG, align 4
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %117 = load i64, i64* %8, align 8
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %119 = load i64, i64* %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %124 = load i64, i64* %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = call i32 (i32, %struct.TYPE_19__*, i32, i8*, ...) @ngx_conf_log_error(i32 %115, %struct.TYPE_19__* %116, i32 0, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i64 %117, %struct.TYPE_16__* %122, i64 %128)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %5, align 8
  br label %181

130:                                              ; preds = %105, %102
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %132 = load i64, i64* %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i64 %132
  store %struct.TYPE_17__* %133, %struct.TYPE_17__** %5, align 8
  br label %181

134:                                              ; preds = %69, %52
  %135 = load i64, i64* %10, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %10, align 8
  br label %21

137:                                              ; preds = %32
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 1
  %142 = call %struct.TYPE_17__* @ngx_list_push(%struct.TYPE_13__* %141)
  store %struct.TYPE_17__* %142, %struct.TYPE_17__** %11, align 8
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %144 = icmp eq %struct.TYPE_17__* %143, null
  br i1 %144, label %145, label %146

145:                                              ; preds = %137
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %5, align 8
  br label %181

146:                                              ; preds = %137
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 4
  store i32* null, i32** %148, align 8
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 4
  store i32 %153, i32* %156, align 8
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 3
  store i32* null, i32** %159, align 8
  %160 = load i64, i64* %8, align 8
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 0
  store i64 %160, i64* %163, align 8
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 2
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %168 = bitcast %struct.TYPE_16__* %166 to i8*
  %169 = bitcast %struct.TYPE_16__* %167 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %168, i8* align 8 %169, i64 16, i1 false)
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 1
  store i64 0, i64* %172, align 8
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 2
  store i32* null, i32** %174, align 8
  %175 = load i8*, i8** %9, align 8
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 0
  store i8* %175, i8** %177, align 8
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 1
  store i64 0, i64* %179, align 8
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  store %struct.TYPE_17__* %180, %struct.TYPE_17__** %5, align 8
  br label %181

181:                                              ; preds = %146, %145, %130, %114, %78
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  ret %struct.TYPE_17__* %182
}

declare dso_local i64 @ngx_strncmp(i32, i32, i64) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_19__*, i32, i8*, ...) #1

declare dso_local %struct.TYPE_17__* @ngx_list_push(%struct.TYPE_13__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
