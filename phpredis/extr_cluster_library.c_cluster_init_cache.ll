; ModuleID = '/home/carl/AnghaBench/phpredis/extr_cluster_library.c_cluster_init_cache.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_cluster_library.c_cluster_init_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32**, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i64, i64, %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_13__ = type { i32, i32* }
%struct.TYPE_12__ = type { i32, i32* }

@HOST_NAME_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s:%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cluster_init_cache(%struct.TYPE_15__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %17 = load i32, i32* @HOST_NAME_MAX, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = mul i64 4, %24
  %26 = trunc i64 %25 to i32
  %27 = call i32* @emalloc(i32 %26)
  store i32* %27, i32** %15, align 8
  store i64 0, i64* %12, align 8
  br label %28

28:                                               ; preds = %41, %2
  %29 = load i64, i64* %12, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = icmp ult i64 %29, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %28
  %36 = load i64, i64* %12, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i32*, i32** %15, align 8
  %39 = load i64, i64* %12, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32 %37, i32* %40, align 4
  br label %41

41:                                               ; preds = %35
  %42 = load i64, i64* %12, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %12, align 8
  br label %28

44:                                               ; preds = %28
  %45 = load i32*, i32** %15, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = call i32 @fyshuffle(i32* %45, i64 %49)
  store i64 0, i64* %12, align 8
  br label %51

51:                                               ; preds = %196, %44
  %52 = load i64, i64* %12, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = icmp ult i64 %52, %56
  br i1 %57, label %58, label %199

58:                                               ; preds = %51
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 6
  store i32 %61, i32* %63, align 4
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %65, align 8
  %67 = load i32*, i32** %15, align 8
  %68 = load i64, i64* %12, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i64 %71
  store %struct.TYPE_16__* %72, %struct.TYPE_16__** %8, align 8
  %73 = trunc i64 %18 to i32
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = call i8* @ZSTR_VAL(i32* %77)
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @snprintf(i8* %20, i32 %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %78, i32 %82)
  store i64 %83, i64* %11, align 8
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = call i8* @ZSTR_VAL(i32* %87)
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @ZSTR_LEN(i32* %92)
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = call i32* @redis_sock_create(i8* %88, i32 %93, i32 %97, i32 %100, i32 %103, i32 %106, i32* null, i32 0)
  store i32* %107, i32** %5, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load i64, i64* %11, align 8
  %112 = load i32*, i32** %5, align 8
  %113 = call i32 @zend_hash_str_update_ptr(i32 %110, i8* %20, i64 %111, i32* %112)
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %116 = call i32* @cached_master_clone(%struct.TYPE_15__* %114, %struct.TYPE_16__* %115)
  store i32* %116, i32** %6, align 8
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load i64, i64* %11, align 8
  %121 = load i32*, i32** %6, align 8
  %122 = call i32 @zend_hash_str_update_ptr(i32 %119, i8* %20, i64 %120, i32* %121)
  store i64 0, i64* %14, align 8
  br label %123

123:                                              ; preds = %153, %58
  %124 = load i64, i64* %14, align 8
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ult i64 %124, %127
  br i1 %128, label %129, label %156

129:                                              ; preds = %123
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 3
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %131, align 8
  %133 = load i64, i64* %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  store i32* %136, i32** %16, align 8
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %138 = load i32*, i32** %16, align 8
  %139 = call i8* @ZSTR_VAL(i32* %138)
  %140 = load i32*, i32** %16, align 8
  %141 = call i32 @ZSTR_LEN(i32* %140)
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 3
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %143, align 8
  %145 = load i64, i64* %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32* @cluster_node_create(%struct.TYPE_15__* %137, i8* %139, i32 %141, i32 %148, i32 0, i32 1)
  store i32* %149, i32** %7, align 8
  %150 = load i32*, i32** %6, align 8
  %151 = load i32*, i32** %7, align 8
  %152 = call i32 @cluster_node_add_slave(i32* %150, i32* %151)
  br label %153

153:                                              ; preds = %129
  %154 = load i64, i64* %14, align 8
  %155 = add i64 %154, 1
  store i64 %155, i64* %14, align 8
  br label %123

156:                                              ; preds = %123
  store i64 0, i64* %13, align 8
  br label %157

157:                                              ; preds = %192, %156
  %158 = load i64, i64* %13, align 8
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp ult i64 %158, %161
  br i1 %162, label %163, label %195

163:                                              ; preds = %157
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 2
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %165, align 8
  %167 = load i64, i64* %13, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  store i64 %170, i64* %14, align 8
  br label %171

171:                                              ; preds = %188, %163
  %172 = load i64, i64* %14, align 8
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 2
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %174, align 8
  %176 = load i64, i64* %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = icmp ule i64 %172, %179
  br i1 %180, label %181, label %191

181:                                              ; preds = %171
  %182 = load i32*, i32** %6, align 8
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 0
  %185 = load i32**, i32*** %184, align 8
  %186 = load i64, i64* %14, align 8
  %187 = getelementptr inbounds i32*, i32** %185, i64 %186
  store i32* %182, i32** %187, align 8
  br label %188

188:                                              ; preds = %181
  %189 = load i64, i64* %14, align 8
  %190 = add i64 %189, 1
  store i64 %190, i64* %14, align 8
  br label %171

191:                                              ; preds = %171
  br label %192

192:                                              ; preds = %191
  %193 = load i64, i64* %13, align 8
  %194 = add i64 %193, 1
  store i64 %194, i64* %13, align 8
  br label %157

195:                                              ; preds = %157
  br label %196

196:                                              ; preds = %195
  %197 = load i64, i64* %12, align 8
  %198 = add i64 %197, 1
  store i64 %198, i64* %12, align 8
  br label %51

199:                                              ; preds = %51
  %200 = load i32*, i32** %15, align 8
  %201 = call i32 @efree(i32* %200)
  %202 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %202)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @emalloc(i32) #2

declare dso_local i32 @fyshuffle(i32*, i64) #2

declare dso_local i64 @snprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local i8* @ZSTR_VAL(i32*) #2

declare dso_local i32* @redis_sock_create(i8*, i32, i32, i32, i32, i32, i32*, i32) #2

declare dso_local i32 @ZSTR_LEN(i32*) #2

declare dso_local i32 @zend_hash_str_update_ptr(i32, i8*, i64, i32*) #2

declare dso_local i32* @cached_master_clone(%struct.TYPE_15__*, %struct.TYPE_16__*) #2

declare dso_local i32* @cluster_node_create(%struct.TYPE_15__*, i8*, i32, i32, i32, i32) #2

declare dso_local i32 @cluster_node_add_slave(i32*, i32*) #2

declare dso_local i32 @efree(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
