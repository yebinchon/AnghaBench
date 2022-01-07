; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_output_chain.c_ngx_output_chain.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_output_chain.c_ngx_output_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i64 (i32, %struct.TYPE_30__*)*, i64, i32, i32*, %struct.TYPE_30__*, %struct.TYPE_27__*, i32, %struct.TYPE_30__*, %struct.TYPE_26__*, %struct.TYPE_28__, i64 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { i64, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_30__ = type { %struct.TYPE_30__*, %struct.TYPE_26__* }

@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_NONE = common dso_local global i64 0, align 8
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"zero size buf in output t:%d r:%d f:%d %p %p-%p %p %O-%O\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"negative size buf in output t:%d r:%d f:%d %p %p-%p %p %O-%O\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_DONE = common dso_local global i64 0, align 8
@NGX_SENDFILE_LIMIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_output_chain(%struct.TYPE_29__* %0, %struct.TYPE_30__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_30__*, align 8
  %10 = alloca %struct.TYPE_30__*, align 8
  %11 = alloca %struct.TYPE_30__**, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %4, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %5, align 8
  %12 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %12, i32 0, i32 7
  %14 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %15 = icmp eq %struct.TYPE_30__* %14, null
  br i1 %15, label %16, label %55

16:                                               ; preds = %2
  %17 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %55

21:                                               ; preds = %16
  %22 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %23 = icmp eq %struct.TYPE_30__* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %25, i32 0, i32 0
  %27 = load i64 (i32, %struct.TYPE_30__*)*, i64 (i32, %struct.TYPE_30__*)** %26, align 8
  %28 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %32 = call i64 %27(i32 %30, %struct.TYPE_30__* %31)
  store i64 %32, i64* %3, align 8
  br label %445

33:                                               ; preds = %21
  %34 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_30__*, %struct.TYPE_30__** %35, align 8
  %37 = icmp eq %struct.TYPE_30__* %36, null
  br i1 %37, label %38, label %54

38:                                               ; preds = %33
  %39 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %40 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %41, align 8
  %43 = call i64 @ngx_output_chain_as_is(%struct.TYPE_29__* %39, %struct.TYPE_26__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %38
  %46 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %46, i32 0, i32 0
  %48 = load i64 (i32, %struct.TYPE_30__*)*, i64 (i32, %struct.TYPE_30__*)** %47, align 8
  %49 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %53 = call i64 %48(i32 %51, %struct.TYPE_30__* %52)
  store i64 %53, i64* %3, align 8
  br label %445

54:                                               ; preds = %38, %33
  br label %55

55:                                               ; preds = %54, %16, %2
  %56 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %57 = icmp ne %struct.TYPE_30__* %56, null
  br i1 %57, label %58, label %71

58:                                               ; preds = %55
  %59 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %59, i32 0, i32 5
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %60, align 8
  %62 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %62, i32 0, i32 7
  %64 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %65 = call i64 @ngx_output_chain_add_copy(%struct.TYPE_27__* %61, %struct.TYPE_30__** %63, %struct.TYPE_30__* %64)
  %66 = load i64, i64* @NGX_ERROR, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = load i64, i64* @NGX_ERROR, align 8
  store i64 %69, i64* %3, align 8
  br label %445

70:                                               ; preds = %58
  br label %71

71:                                               ; preds = %70, %55
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %10, align 8
  store %struct.TYPE_30__** %10, %struct.TYPE_30__*** %11, align 8
  %72 = load i64, i64* @NGX_NONE, align 8
  store i64 %72, i64* %8, align 8
  br label %73

73:                                               ; preds = %433, %71
  br label %74

74:                                               ; preds = %385, %260, %96, %73
  %75 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %75, i32 0, i32 7
  %77 = load %struct.TYPE_30__*, %struct.TYPE_30__** %76, align 8
  %78 = icmp ne %struct.TYPE_30__* %77, null
  br i1 %78, label %79, label %399

79:                                               ; preds = %74
  %80 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %80, i32 0, i32 7
  %82 = load %struct.TYPE_30__*, %struct.TYPE_30__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** %83, align 8
  %85 = call i64 @ngx_buf_size(%struct.TYPE_26__* %84)
  store i64 %85, i64* %6, align 8
  %86 = load i64, i64* %6, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %175

88:                                               ; preds = %79
  %89 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %89, i32 0, i32 7
  %91 = load %struct.TYPE_30__*, %struct.TYPE_30__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %92, align 8
  %94 = call i32 @ngx_buf_special(%struct.TYPE_26__* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %175, label %96

96:                                               ; preds = %88
  %97 = load i32, i32* @NGX_LOG_ALERT, align 4
  %98 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %98, i32 0, i32 5
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %103, i32 0, i32 7
  %105 = load %struct.TYPE_30__*, %struct.TYPE_30__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %107, i32 0, i32 8
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %110, i32 0, i32 7
  %112 = load %struct.TYPE_30__*, %struct.TYPE_30__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %114, i32 0, i32 7
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %117, i32 0, i32 7
  %119 = load %struct.TYPE_30__*, %struct.TYPE_30__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %121, i32 0, i32 6
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %124, i32 0, i32 7
  %126 = load %struct.TYPE_30__*, %struct.TYPE_30__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %131, i32 0, i32 7
  %133 = load %struct.TYPE_30__*, %struct.TYPE_30__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %138, i32 0, i32 7
  %140 = load %struct.TYPE_30__*, %struct.TYPE_30__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_26__*, %struct.TYPE_26__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %145, i32 0, i32 7
  %147 = load %struct.TYPE_30__*, %struct.TYPE_30__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_26__*, %struct.TYPE_26__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %152, i32 0, i32 7
  %154 = load %struct.TYPE_30__*, %struct.TYPE_30__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %159, i32 0, i32 7
  %161 = load %struct.TYPE_30__*, %struct.TYPE_30__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_26__*, %struct.TYPE_26__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @ngx_log_error(i32 %97, i32 %102, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %109, i32 %116, i64 %123, i32 %130, i32 %137, i32 %144, i32 %151, i32 %158, i64 %165)
  %167 = call i32 (...) @ngx_debug_point()
  %168 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %168, i32 0, i32 7
  %170 = load %struct.TYPE_30__*, %struct.TYPE_30__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_30__*, %struct.TYPE_30__** %171, align 8
  %173 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %173, i32 0, i32 7
  store %struct.TYPE_30__* %172, %struct.TYPE_30__** %174, align 8
  br label %74

175:                                              ; preds = %88, %79
  %176 = load i64, i64* %6, align 8
  %177 = icmp slt i64 %176, 0
  br i1 %177, label %178, label %251

178:                                              ; preds = %175
  %179 = load i32, i32* @NGX_LOG_ALERT, align 4
  %180 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %180, i32 0, i32 5
  %182 = load %struct.TYPE_27__*, %struct.TYPE_27__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %185, i32 0, i32 7
  %187 = load %struct.TYPE_30__*, %struct.TYPE_30__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_26__*, %struct.TYPE_26__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %189, i32 0, i32 8
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %192, i32 0, i32 7
  %194 = load %struct.TYPE_30__*, %struct.TYPE_30__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_26__*, %struct.TYPE_26__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %196, i32 0, i32 7
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %199, i32 0, i32 7
  %201 = load %struct.TYPE_30__*, %struct.TYPE_30__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_26__*, %struct.TYPE_26__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %203, i32 0, i32 6
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %206, i32 0, i32 7
  %208 = load %struct.TYPE_30__*, %struct.TYPE_30__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_26__*, %struct.TYPE_26__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %210, i32 0, i32 5
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %213, i32 0, i32 7
  %215 = load %struct.TYPE_30__*, %struct.TYPE_30__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %215, i32 0, i32 1
  %217 = load %struct.TYPE_26__*, %struct.TYPE_26__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %220, i32 0, i32 7
  %222 = load %struct.TYPE_30__*, %struct.TYPE_30__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %222, i32 0, i32 1
  %224 = load %struct.TYPE_26__*, %struct.TYPE_26__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %227, i32 0, i32 7
  %229 = load %struct.TYPE_30__*, %struct.TYPE_30__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %229, i32 0, i32 1
  %231 = load %struct.TYPE_26__*, %struct.TYPE_26__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %234, i32 0, i32 7
  %236 = load %struct.TYPE_30__*, %struct.TYPE_30__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %236, i32 0, i32 1
  %238 = load %struct.TYPE_26__*, %struct.TYPE_26__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %241, i32 0, i32 7
  %243 = load %struct.TYPE_30__*, %struct.TYPE_30__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %243, i32 0, i32 1
  %245 = load %struct.TYPE_26__*, %struct.TYPE_26__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = call i32 @ngx_log_error(i32 %179, i32 %184, i32 0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %191, i32 %198, i64 %205, i32 %212, i32 %219, i32 %226, i32 %233, i32 %240, i64 %247)
  %249 = call i32 (...) @ngx_debug_point()
  %250 = load i64, i64* @NGX_ERROR, align 8
  store i64 %250, i64* %3, align 8
  br label %445

251:                                              ; preds = %175
  %252 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %253 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %253, i32 0, i32 7
  %255 = load %struct.TYPE_30__*, %struct.TYPE_30__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %255, i32 0, i32 1
  %257 = load %struct.TYPE_26__*, %struct.TYPE_26__** %256, align 8
  %258 = call i64 @ngx_output_chain_as_is(%struct.TYPE_29__* %252, %struct.TYPE_26__* %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %275

260:                                              ; preds = %251
  %261 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %261, i32 0, i32 7
  %263 = load %struct.TYPE_30__*, %struct.TYPE_30__** %262, align 8
  store %struct.TYPE_30__* %263, %struct.TYPE_30__** %9, align 8
  %264 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %265 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %264, i32 0, i32 0
  %266 = load %struct.TYPE_30__*, %struct.TYPE_30__** %265, align 8
  %267 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %267, i32 0, i32 7
  store %struct.TYPE_30__* %266, %struct.TYPE_30__** %268, align 8
  %269 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %270 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %11, align 8
  store %struct.TYPE_30__* %269, %struct.TYPE_30__** %270, align 8
  %271 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %272 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %271, i32 0, i32 0
  store %struct.TYPE_30__** %272, %struct.TYPE_30__*** %11, align 8
  %273 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %274 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %273, i32 0, i32 0
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %274, align 8
  br label %74

275:                                              ; preds = %251
  %276 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %276, i32 0, i32 8
  %278 = load %struct.TYPE_26__*, %struct.TYPE_26__** %277, align 8
  %279 = icmp eq %struct.TYPE_26__* %278, null
  br i1 %279, label %280, label %342

280:                                              ; preds = %275
  %281 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %282 = load i64, i64* %6, align 8
  %283 = call i64 @ngx_output_chain_align_file_buf(%struct.TYPE_29__* %281, i64 %282)
  store i64 %283, i64* %7, align 8
  %284 = load i64, i64* %7, align 8
  %285 = load i64, i64* @NGX_ERROR, align 8
  %286 = icmp eq i64 %284, %285
  br i1 %286, label %287, label %289

287:                                              ; preds = %280
  %288 = load i64, i64* @NGX_ERROR, align 8
  store i64 %288, i64* %3, align 8
  br label %445

289:                                              ; preds = %280
  %290 = load i64, i64* %7, align 8
  %291 = load i64, i64* @NGX_OK, align 8
  %292 = icmp ne i64 %290, %291
  br i1 %292, label %293, label %341

293:                                              ; preds = %289
  %294 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %294, i32 0, i32 4
  %296 = load %struct.TYPE_30__*, %struct.TYPE_30__** %295, align 8
  %297 = icmp ne %struct.TYPE_30__* %296, null
  br i1 %297, label %298, label %317

298:                                              ; preds = %293
  %299 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %300 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %299, i32 0, i32 4
  %301 = load %struct.TYPE_30__*, %struct.TYPE_30__** %300, align 8
  store %struct.TYPE_30__* %301, %struct.TYPE_30__** %9, align 8
  %302 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %303 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %302, i32 0, i32 1
  %304 = load %struct.TYPE_26__*, %struct.TYPE_26__** %303, align 8
  %305 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %305, i32 0, i32 8
  store %struct.TYPE_26__* %304, %struct.TYPE_26__** %306, align 8
  %307 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %308 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %307, i32 0, i32 0
  %309 = load %struct.TYPE_30__*, %struct.TYPE_30__** %308, align 8
  %310 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %310, i32 0, i32 4
  store %struct.TYPE_30__* %309, %struct.TYPE_30__** %311, align 8
  %312 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %312, i32 0, i32 5
  %314 = load %struct.TYPE_27__*, %struct.TYPE_27__** %313, align 8
  %315 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %316 = call i32 @ngx_free_chain(%struct.TYPE_27__* %314, %struct.TYPE_30__* %315)
  br label %340

317:                                              ; preds = %293
  %318 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %319 = icmp ne %struct.TYPE_30__* %318, null
  br i1 %319, label %329, label %320

320:                                              ; preds = %317
  %321 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %322 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %321, i32 0, i32 1
  %323 = load i64, i64* %322, align 8
  %324 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %325 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %324, i32 0, i32 9
  %326 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = icmp eq i64 %323, %327
  br i1 %328, label %329, label %330

329:                                              ; preds = %320, %317
  br label %399

330:                                              ; preds = %320
  %331 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %332 = load i64, i64* %6, align 8
  %333 = call i64 @ngx_output_chain_get_buf(%struct.TYPE_29__* %331, i64 %332)
  %334 = load i64, i64* @NGX_OK, align 8
  %335 = icmp ne i64 %333, %334
  br i1 %335, label %336, label %338

336:                                              ; preds = %330
  %337 = load i64, i64* @NGX_ERROR, align 8
  store i64 %337, i64* %3, align 8
  br label %445

338:                                              ; preds = %330
  br label %339

339:                                              ; preds = %338
  br label %340

340:                                              ; preds = %339, %298
  br label %341

341:                                              ; preds = %340, %289
  br label %342

342:                                              ; preds = %341, %275
  %343 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %344 = call i64 @ngx_output_chain_copy_buf(%struct.TYPE_29__* %343)
  store i64 %344, i64* %7, align 8
  %345 = load i64, i64* %7, align 8
  %346 = load i64, i64* @NGX_ERROR, align 8
  %347 = icmp eq i64 %345, %346
  br i1 %347, label %348, label %350

348:                                              ; preds = %342
  %349 = load i64, i64* %7, align 8
  store i64 %349, i64* %3, align 8
  br label %445

350:                                              ; preds = %342
  %351 = load i64, i64* %7, align 8
  %352 = load i64, i64* @NGX_AGAIN, align 8
  %353 = icmp eq i64 %351, %352
  br i1 %353, label %354, label %360

354:                                              ; preds = %350
  %355 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %356 = icmp ne %struct.TYPE_30__* %355, null
  br i1 %356, label %357, label %358

357:                                              ; preds = %354
  br label %399

358:                                              ; preds = %354
  %359 = load i64, i64* %7, align 8
  store i64 %359, i64* %3, align 8
  br label %445

360:                                              ; preds = %350
  %361 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %362 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %361, i32 0, i32 7
  %363 = load %struct.TYPE_30__*, %struct.TYPE_30__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %363, i32 0, i32 1
  %365 = load %struct.TYPE_26__*, %struct.TYPE_26__** %364, align 8
  %366 = call i64 @ngx_buf_size(%struct.TYPE_26__* %365)
  %367 = icmp eq i64 %366, 0
  br i1 %367, label %368, label %376

368:                                              ; preds = %360
  %369 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %370 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %369, i32 0, i32 7
  %371 = load %struct.TYPE_30__*, %struct.TYPE_30__** %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %371, i32 0, i32 0
  %373 = load %struct.TYPE_30__*, %struct.TYPE_30__** %372, align 8
  %374 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %375 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %374, i32 0, i32 7
  store %struct.TYPE_30__* %373, %struct.TYPE_30__** %375, align 8
  br label %376

376:                                              ; preds = %368, %360
  %377 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %378 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %377, i32 0, i32 5
  %379 = load %struct.TYPE_27__*, %struct.TYPE_27__** %378, align 8
  %380 = call %struct.TYPE_30__* @ngx_alloc_chain_link(%struct.TYPE_27__* %379)
  store %struct.TYPE_30__* %380, %struct.TYPE_30__** %9, align 8
  %381 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %382 = icmp eq %struct.TYPE_30__* %381, null
  br i1 %382, label %383, label %385

383:                                              ; preds = %376
  %384 = load i64, i64* @NGX_ERROR, align 8
  store i64 %384, i64* %3, align 8
  br label %445

385:                                              ; preds = %376
  %386 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %387 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %386, i32 0, i32 8
  %388 = load %struct.TYPE_26__*, %struct.TYPE_26__** %387, align 8
  %389 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %390 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %389, i32 0, i32 1
  store %struct.TYPE_26__* %388, %struct.TYPE_26__** %390, align 8
  %391 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %392 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %391, i32 0, i32 0
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %392, align 8
  %393 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %394 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %11, align 8
  store %struct.TYPE_30__* %393, %struct.TYPE_30__** %394, align 8
  %395 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %396 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %395, i32 0, i32 0
  store %struct.TYPE_30__** %396, %struct.TYPE_30__*** %11, align 8
  %397 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %398 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %397, i32 0, i32 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %398, align 8
  br label %74

399:                                              ; preds = %357, %329, %74
  %400 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %401 = icmp eq %struct.TYPE_30__* %400, null
  br i1 %401, label %402, label %415

402:                                              ; preds = %399
  %403 = load i64, i64* %8, align 8
  %404 = load i64, i64* @NGX_NONE, align 8
  %405 = icmp ne i64 %403, %404
  br i1 %405, label %406, label %415

406:                                              ; preds = %402
  %407 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %408 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %407, i32 0, i32 7
  %409 = load %struct.TYPE_30__*, %struct.TYPE_30__** %408, align 8
  %410 = icmp ne %struct.TYPE_30__* %409, null
  br i1 %410, label %411, label %413

411:                                              ; preds = %406
  %412 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %412, i64* %3, align 8
  br label %445

413:                                              ; preds = %406
  %414 = load i64, i64* %8, align 8
  store i64 %414, i64* %3, align 8
  br label %445

415:                                              ; preds = %402, %399
  %416 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %417 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %416, i32 0, i32 0
  %418 = load i64 (i32, %struct.TYPE_30__*)*, i64 (i32, %struct.TYPE_30__*)** %417, align 8
  %419 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %420 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %419, i32 0, i32 6
  %421 = load i32, i32* %420, align 8
  %422 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %423 = call i64 %418(i32 %421, %struct.TYPE_30__* %422)
  store i64 %423, i64* %8, align 8
  %424 = load i64, i64* %8, align 8
  %425 = load i64, i64* @NGX_ERROR, align 8
  %426 = icmp eq i64 %424, %425
  br i1 %426, label %431, label %427

427:                                              ; preds = %415
  %428 = load i64, i64* %8, align 8
  %429 = load i64, i64* @NGX_DONE, align 8
  %430 = icmp eq i64 %428, %429
  br i1 %430, label %431, label %433

431:                                              ; preds = %427, %415
  %432 = load i64, i64* %8, align 8
  store i64 %432, i64* %3, align 8
  br label %445

433:                                              ; preds = %427
  %434 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %435 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %434, i32 0, i32 5
  %436 = load %struct.TYPE_27__*, %struct.TYPE_27__** %435, align 8
  %437 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %438 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %437, i32 0, i32 4
  %439 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %440 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %439, i32 0, i32 3
  %441 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %442 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %441, i32 0, i32 2
  %443 = load i32, i32* %442, align 8
  %444 = call i32 @ngx_chain_update_chains(%struct.TYPE_27__* %436, %struct.TYPE_30__** %438, i32** %440, %struct.TYPE_30__** %10, i32 %443)
  store %struct.TYPE_30__** %10, %struct.TYPE_30__*** %11, align 8
  br label %73

445:                                              ; preds = %431, %413, %411, %383, %358, %348, %336, %287, %178, %68, %45, %24
  %446 = load i64, i64* %3, align 8
  ret i64 %446
}

declare dso_local i64 @ngx_output_chain_as_is(%struct.TYPE_29__*, %struct.TYPE_26__*) #1

declare dso_local i64 @ngx_output_chain_add_copy(%struct.TYPE_27__*, %struct.TYPE_30__**, %struct.TYPE_30__*) #1

declare dso_local i64 @ngx_buf_size(%struct.TYPE_26__*) #1

declare dso_local i32 @ngx_buf_special(%struct.TYPE_26__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32, i32, i64, i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @ngx_debug_point(...) #1

declare dso_local i64 @ngx_output_chain_align_file_buf(%struct.TYPE_29__*, i64) #1

declare dso_local i32 @ngx_free_chain(%struct.TYPE_27__*, %struct.TYPE_30__*) #1

declare dso_local i64 @ngx_output_chain_get_buf(%struct.TYPE_29__*, i64) #1

declare dso_local i64 @ngx_output_chain_copy_buf(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_30__* @ngx_alloc_chain_link(%struct.TYPE_27__*) #1

declare dso_local i32 @ngx_chain_update_chains(%struct.TYPE_27__*, %struct.TYPE_30__**, i32**, %struct.TYPE_30__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
