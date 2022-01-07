; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_rbtree.c_ngx_rbtree_delete.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_rbtree.c_ngx_rbtree_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_21__*, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_rbtree_delete(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_21__**, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %4, align 8
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 1
  store %struct.TYPE_21__** %12, %struct.TYPE_21__*** %6, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  store %struct.TYPE_21__* %15, %struct.TYPE_21__** %7, align 8
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %20 = icmp eq %struct.TYPE_21__* %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  store %struct.TYPE_21__* %24, %struct.TYPE_21__** %9, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_21__* %25, %struct.TYPE_21__** %8, align 8
  br label %47

26:                                               ; preds = %2
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %31 = icmp eq %struct.TYPE_21__* %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %34, align 8
  store %struct.TYPE_21__* %35, %struct.TYPE_21__** %9, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_21__* %36, %struct.TYPE_21__** %8, align 8
  br label %46

37:                                               ; preds = %26
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %39, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %42 = call %struct.TYPE_21__* @ngx_rbtree_min(%struct.TYPE_21__* %40, %struct.TYPE_21__* %41)
  store %struct.TYPE_21__* %42, %struct.TYPE_21__** %8, align 8
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %44, align 8
  store %struct.TYPE_21__* %45, %struct.TYPE_21__** %9, align 8
  br label %46

46:                                               ; preds = %37, %32
  br label %47

47:                                               ; preds = %46, %21
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %49 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %49, align 8
  %51 = icmp eq %struct.TYPE_21__* %48, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %47
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %54 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  store %struct.TYPE_21__* %53, %struct.TYPE_21__** %54, align 8
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %56 = call i32 @ngx_rbt_black(%struct.TYPE_21__* %55)
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 1
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %58, align 8
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 2
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %60, align 8
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 0
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %62, align 8
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 3
  store i64 0, i64* %64, align 8
  br label %401

65:                                               ; preds = %47
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %67 = call i64 @ngx_rbt_is_red(%struct.TYPE_21__* %66)
  store i64 %67, i64* %5, align 8
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %72, align 8
  %74 = icmp eq %struct.TYPE_21__* %68, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %65
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 1
  store %struct.TYPE_21__* %76, %struct.TYPE_21__** %80, align 8
  br label %87

81:                                               ; preds = %65
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 2
  store %struct.TYPE_21__* %82, %struct.TYPE_21__** %86, align 8
  br label %87

87:                                               ; preds = %81, %75
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %90 = icmp eq %struct.TYPE_21__* %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %93, align 8
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 0
  store %struct.TYPE_21__* %94, %struct.TYPE_21__** %96, align 8
  br label %185

97:                                               ; preds = %87
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %99, align 8
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %102 = icmp eq %struct.TYPE_21__* %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 0
  store %struct.TYPE_21__* %104, %struct.TYPE_21__** %106, align 8
  br label %113

107:                                              ; preds = %97
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %109, align 8
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  store %struct.TYPE_21__* %110, %struct.TYPE_21__** %112, align 8
  br label %113

113:                                              ; preds = %107, %103
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %115, align 8
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 1
  store %struct.TYPE_21__* %116, %struct.TYPE_21__** %118, align 8
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %120, align 8
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 2
  store %struct.TYPE_21__* %121, %struct.TYPE_21__** %123, align 8
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %125, align 8
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 0
  store %struct.TYPE_21__* %126, %struct.TYPE_21__** %128, align 8
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %131 = call i32 @ngx_rbt_copy_color(%struct.TYPE_21__* %129, %struct.TYPE_21__* %130)
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %133 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %133, align 8
  %135 = icmp eq %struct.TYPE_21__* %132, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %113
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %138 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  store %struct.TYPE_21__* %137, %struct.TYPE_21__** %138, align 8
  br label %160

139:                                              ; preds = %113
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %144, align 8
  %146 = icmp eq %struct.TYPE_21__* %140, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %139
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 1
  store %struct.TYPE_21__* %148, %struct.TYPE_21__** %152, align 8
  br label %159

153:                                              ; preds = %139
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 2
  store %struct.TYPE_21__* %154, %struct.TYPE_21__** %158, align 8
  br label %159

159:                                              ; preds = %153, %147
  br label %160

160:                                              ; preds = %159, %136
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %162, align 8
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %165 = icmp ne %struct.TYPE_21__* %163, %164
  br i1 %165, label %166, label %172

166:                                              ; preds = %160
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 0
  store %struct.TYPE_21__* %167, %struct.TYPE_21__** %171, align 8
  br label %172

172:                                              ; preds = %166, %160
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 2
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %174, align 8
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %177 = icmp ne %struct.TYPE_21__* %175, %176
  br i1 %177, label %178, label %184

178:                                              ; preds = %172
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %180, i32 0, i32 2
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 0
  store %struct.TYPE_21__* %179, %struct.TYPE_21__** %183, align 8
  br label %184

184:                                              ; preds = %178, %172
  br label %185

185:                                              ; preds = %184, %91
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 1
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %187, align 8
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 2
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %189, align 8
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 0
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %191, align 8
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 3
  store i64 0, i64* %193, align 8
  %194 = load i64, i64* %5, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %185
  br label %401

197:                                              ; preds = %185
  br label %198

198:                                              ; preds = %397, %197
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %200 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %201 = load %struct.TYPE_21__*, %struct.TYPE_21__** %200, align 8
  %202 = icmp ne %struct.TYPE_21__* %199, %201
  br i1 %202, label %203, label %207

203:                                              ; preds = %198
  %204 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %205 = call i64 @ngx_rbt_is_black(%struct.TYPE_21__* %204)
  %206 = icmp ne i64 %205, 0
  br label %207

207:                                              ; preds = %203, %198
  %208 = phi i1 [ false, %198 ], [ %206, %203 ]
  br i1 %208, label %209, label %398

209:                                              ; preds = %207
  %210 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %211 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %214, align 8
  %216 = icmp eq %struct.TYPE_21__* %210, %215
  br i1 %216, label %217, label %307

217:                                              ; preds = %209
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_21__*, %struct.TYPE_21__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %220, i32 0, i32 2
  %222 = load %struct.TYPE_21__*, %struct.TYPE_21__** %221, align 8
  store %struct.TYPE_21__* %222, %struct.TYPE_21__** %10, align 8
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %224 = call i64 @ngx_rbt_is_red(%struct.TYPE_21__* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %244

226:                                              ; preds = %217
  %227 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %228 = call i32 @ngx_rbt_black(%struct.TYPE_21__* %227)
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 0
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %230, align 8
  %232 = call i32 @ngx_rbt_red(%struct.TYPE_21__* %231)
  %233 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %234 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %235 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %236 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_21__*, %struct.TYPE_21__** %236, align 8
  %238 = call i32 @ngx_rbtree_left_rotate(%struct.TYPE_21__** %233, %struct.TYPE_21__* %234, %struct.TYPE_21__* %237)
  %239 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %240 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %239, i32 0, i32 0
  %241 = load %struct.TYPE_21__*, %struct.TYPE_21__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %241, i32 0, i32 2
  %243 = load %struct.TYPE_21__*, %struct.TYPE_21__** %242, align 8
  store %struct.TYPE_21__* %243, %struct.TYPE_21__** %10, align 8
  br label %244

244:                                              ; preds = %226, %217
  %245 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %246 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %245, i32 0, i32 1
  %247 = load %struct.TYPE_21__*, %struct.TYPE_21__** %246, align 8
  %248 = call i64 @ngx_rbt_is_black(%struct.TYPE_21__* %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %262

250:                                              ; preds = %244
  %251 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %252 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %251, i32 0, i32 2
  %253 = load %struct.TYPE_21__*, %struct.TYPE_21__** %252, align 8
  %254 = call i64 @ngx_rbt_is_black(%struct.TYPE_21__* %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %262

256:                                              ; preds = %250
  %257 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %258 = call i32 @ngx_rbt_red(%struct.TYPE_21__* %257)
  %259 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %260 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %259, i32 0, i32 0
  %261 = load %struct.TYPE_21__*, %struct.TYPE_21__** %260, align 8
  store %struct.TYPE_21__* %261, %struct.TYPE_21__** %9, align 8
  br label %306

262:                                              ; preds = %250, %244
  %263 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %264 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %263, i32 0, i32 2
  %265 = load %struct.TYPE_21__*, %struct.TYPE_21__** %264, align 8
  %266 = call i64 @ngx_rbt_is_black(%struct.TYPE_21__* %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %284

268:                                              ; preds = %262
  %269 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %270 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %269, i32 0, i32 1
  %271 = load %struct.TYPE_21__*, %struct.TYPE_21__** %270, align 8
  %272 = call i32 @ngx_rbt_black(%struct.TYPE_21__* %271)
  %273 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %274 = call i32 @ngx_rbt_red(%struct.TYPE_21__* %273)
  %275 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %276 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %277 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %278 = call i32 @ngx_rbtree_right_rotate(%struct.TYPE_21__** %275, %struct.TYPE_21__* %276, %struct.TYPE_21__* %277)
  %279 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %280 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %279, i32 0, i32 0
  %281 = load %struct.TYPE_21__*, %struct.TYPE_21__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %281, i32 0, i32 2
  %283 = load %struct.TYPE_21__*, %struct.TYPE_21__** %282, align 8
  store %struct.TYPE_21__* %283, %struct.TYPE_21__** %10, align 8
  br label %284

284:                                              ; preds = %268, %262
  %285 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %286 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %287 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %286, i32 0, i32 0
  %288 = load %struct.TYPE_21__*, %struct.TYPE_21__** %287, align 8
  %289 = call i32 @ngx_rbt_copy_color(%struct.TYPE_21__* %285, %struct.TYPE_21__* %288)
  %290 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %291 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %290, i32 0, i32 0
  %292 = load %struct.TYPE_21__*, %struct.TYPE_21__** %291, align 8
  %293 = call i32 @ngx_rbt_black(%struct.TYPE_21__* %292)
  %294 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %295 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %294, i32 0, i32 2
  %296 = load %struct.TYPE_21__*, %struct.TYPE_21__** %295, align 8
  %297 = call i32 @ngx_rbt_black(%struct.TYPE_21__* %296)
  %298 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %299 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %300 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %301 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %300, i32 0, i32 0
  %302 = load %struct.TYPE_21__*, %struct.TYPE_21__** %301, align 8
  %303 = call i32 @ngx_rbtree_left_rotate(%struct.TYPE_21__** %298, %struct.TYPE_21__* %299, %struct.TYPE_21__* %302)
  %304 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %305 = load %struct.TYPE_21__*, %struct.TYPE_21__** %304, align 8
  store %struct.TYPE_21__* %305, %struct.TYPE_21__** %9, align 8
  br label %306

306:                                              ; preds = %284, %256
  br label %397

307:                                              ; preds = %209
  %308 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %309 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %308, i32 0, i32 0
  %310 = load %struct.TYPE_21__*, %struct.TYPE_21__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %310, i32 0, i32 1
  %312 = load %struct.TYPE_21__*, %struct.TYPE_21__** %311, align 8
  store %struct.TYPE_21__* %312, %struct.TYPE_21__** %10, align 8
  %313 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %314 = call i64 @ngx_rbt_is_red(%struct.TYPE_21__* %313)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %334

316:                                              ; preds = %307
  %317 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %318 = call i32 @ngx_rbt_black(%struct.TYPE_21__* %317)
  %319 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %320 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %319, i32 0, i32 0
  %321 = load %struct.TYPE_21__*, %struct.TYPE_21__** %320, align 8
  %322 = call i32 @ngx_rbt_red(%struct.TYPE_21__* %321)
  %323 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %324 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %325 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %326 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %325, i32 0, i32 0
  %327 = load %struct.TYPE_21__*, %struct.TYPE_21__** %326, align 8
  %328 = call i32 @ngx_rbtree_right_rotate(%struct.TYPE_21__** %323, %struct.TYPE_21__* %324, %struct.TYPE_21__* %327)
  %329 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %330 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %329, i32 0, i32 0
  %331 = load %struct.TYPE_21__*, %struct.TYPE_21__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %331, i32 0, i32 1
  %333 = load %struct.TYPE_21__*, %struct.TYPE_21__** %332, align 8
  store %struct.TYPE_21__* %333, %struct.TYPE_21__** %10, align 8
  br label %334

334:                                              ; preds = %316, %307
  %335 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %336 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %335, i32 0, i32 1
  %337 = load %struct.TYPE_21__*, %struct.TYPE_21__** %336, align 8
  %338 = call i64 @ngx_rbt_is_black(%struct.TYPE_21__* %337)
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %352

340:                                              ; preds = %334
  %341 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %342 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %341, i32 0, i32 2
  %343 = load %struct.TYPE_21__*, %struct.TYPE_21__** %342, align 8
  %344 = call i64 @ngx_rbt_is_black(%struct.TYPE_21__* %343)
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %352

346:                                              ; preds = %340
  %347 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %348 = call i32 @ngx_rbt_red(%struct.TYPE_21__* %347)
  %349 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %350 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %349, i32 0, i32 0
  %351 = load %struct.TYPE_21__*, %struct.TYPE_21__** %350, align 8
  store %struct.TYPE_21__* %351, %struct.TYPE_21__** %9, align 8
  br label %396

352:                                              ; preds = %340, %334
  %353 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %354 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %353, i32 0, i32 1
  %355 = load %struct.TYPE_21__*, %struct.TYPE_21__** %354, align 8
  %356 = call i64 @ngx_rbt_is_black(%struct.TYPE_21__* %355)
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %374

358:                                              ; preds = %352
  %359 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %360 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %359, i32 0, i32 2
  %361 = load %struct.TYPE_21__*, %struct.TYPE_21__** %360, align 8
  %362 = call i32 @ngx_rbt_black(%struct.TYPE_21__* %361)
  %363 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %364 = call i32 @ngx_rbt_red(%struct.TYPE_21__* %363)
  %365 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %366 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %367 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %368 = call i32 @ngx_rbtree_left_rotate(%struct.TYPE_21__** %365, %struct.TYPE_21__* %366, %struct.TYPE_21__* %367)
  %369 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %370 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %369, i32 0, i32 0
  %371 = load %struct.TYPE_21__*, %struct.TYPE_21__** %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %371, i32 0, i32 1
  %373 = load %struct.TYPE_21__*, %struct.TYPE_21__** %372, align 8
  store %struct.TYPE_21__* %373, %struct.TYPE_21__** %10, align 8
  br label %374

374:                                              ; preds = %358, %352
  %375 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %376 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %377 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %376, i32 0, i32 0
  %378 = load %struct.TYPE_21__*, %struct.TYPE_21__** %377, align 8
  %379 = call i32 @ngx_rbt_copy_color(%struct.TYPE_21__* %375, %struct.TYPE_21__* %378)
  %380 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %381 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %380, i32 0, i32 0
  %382 = load %struct.TYPE_21__*, %struct.TYPE_21__** %381, align 8
  %383 = call i32 @ngx_rbt_black(%struct.TYPE_21__* %382)
  %384 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %385 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %384, i32 0, i32 1
  %386 = load %struct.TYPE_21__*, %struct.TYPE_21__** %385, align 8
  %387 = call i32 @ngx_rbt_black(%struct.TYPE_21__* %386)
  %388 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %389 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %390 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %391 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %390, i32 0, i32 0
  %392 = load %struct.TYPE_21__*, %struct.TYPE_21__** %391, align 8
  %393 = call i32 @ngx_rbtree_right_rotate(%struct.TYPE_21__** %388, %struct.TYPE_21__* %389, %struct.TYPE_21__* %392)
  %394 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %395 = load %struct.TYPE_21__*, %struct.TYPE_21__** %394, align 8
  store %struct.TYPE_21__* %395, %struct.TYPE_21__** %9, align 8
  br label %396

396:                                              ; preds = %374, %346
  br label %397

397:                                              ; preds = %396, %306
  br label %198

398:                                              ; preds = %207
  %399 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %400 = call i32 @ngx_rbt_black(%struct.TYPE_21__* %399)
  br label %401

401:                                              ; preds = %398, %196, %52
  ret void
}

declare dso_local %struct.TYPE_21__* @ngx_rbtree_min(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @ngx_rbt_black(%struct.TYPE_21__*) #1

declare dso_local i64 @ngx_rbt_is_red(%struct.TYPE_21__*) #1

declare dso_local i32 @ngx_rbt_copy_color(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i64 @ngx_rbt_is_black(%struct.TYPE_21__*) #1

declare dso_local i32 @ngx_rbt_red(%struct.TYPE_21__*) #1

declare dso_local i32 @ngx_rbtree_left_rotate(%struct.TYPE_21__**, %struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @ngx_rbtree_right_rotate(%struct.TYPE_21__**, %struct.TYPE_21__*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
