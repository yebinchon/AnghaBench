; ModuleID = '/home/carl/AnghaBench/phpredis/extr_cluster_library.c_cluster_map_slots.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_cluster_library.c_cluster_map_slots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__**, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i32, i8*, i32, i64, %struct.TYPE_19__** }
%struct.TYPE_16__ = type { i16, i16 }

@.str = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_19__*)* @cluster_map_slots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cluster_map_slots(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_16__, align 2
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca %struct.TYPE_19__*, align 8
  %17 = alloca %struct.TYPE_19__*, align 8
  %18 = alloca i16, align 2
  %19 = alloca i8*, align 8
  %20 = alloca [1024 x i8], align 16
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %206, %2
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %209

27:                                               ; preds = %21
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 4
  %30 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %30, i64 %32
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %33, align 8
  store %struct.TYPE_19__* %34, %struct.TYPE_19__** %16, align 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %36 = call i32 @VALIDATE_SLOTS_OUTER(%struct.TYPE_19__* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %27
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %41, i64 2
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %42, align 8
  %44 = call i32 @VALIDATE_SLOTS_INNER(%struct.TYPE_19__* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %38, %27
  store i32 -1, i32* %3, align 4
  br label %210

47:                                               ; preds = %38
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 4
  %50 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %50, i64 2
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %51, align 8
  store %struct.TYPE_19__* %52, %struct.TYPE_19__** %17, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 4
  %55 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %55, i64 0
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i16
  store i16 %60, i16* %14, align 2
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 4
  %63 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %63, i64 1
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i16
  store i16 %68, i16* %15, align 2
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 4
  %71 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %71, i64 0
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %19, align 8
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 4
  %78 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %78, i64 0
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %12, align 4
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 4
  %85 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %85, i64 1
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i16
  store i16 %90, i16* %18, align 2
  %91 = getelementptr inbounds [1024 x i8], [1024 x i8]* %20, i64 0, i64 0
  %92 = load i8*, i8** %19, align 8
  %93 = load i16, i16* %18, align 2
  %94 = call i32 @snprintf(i8* %91, i32 1024, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %92, i16 zeroext %93)
  store i32 %94, i32* %13, align 4
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds [1024 x i8], [1024 x i8]* %20, i64 0, i64 0
  %99 = load i32, i32* %13, align 4
  %100 = call %struct.TYPE_17__* @zend_hash_str_find_ptr(i32 %97, i8* %98, i32 %99)
  store %struct.TYPE_17__* %100, %struct.TYPE_17__** %6, align 8
  %101 = icmp eq %struct.TYPE_17__* %100, null
  br i1 %101, label %102, label %116

102:                                              ; preds = %47
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %104 = load i8*, i8** %19, align 8
  %105 = load i32, i32* %12, align 4
  %106 = load i16, i16* %18, align 2
  %107 = load i16, i16* %14, align 2
  %108 = call %struct.TYPE_17__* @cluster_node_create(%struct.TYPE_18__* %103, i8* %104, i32 %105, i16 zeroext %106, i16 signext %107, i32 0)
  store %struct.TYPE_17__* %108, %struct.TYPE_17__** %7, align 8
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = getelementptr inbounds [1024 x i8], [1024 x i8]* %20, i64 0, i64 0
  %113 = load i32, i32* %13, align 4
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %115 = call i32 @zend_hash_str_update_ptr(i32 %111, i8* %112, i32 %113, %struct.TYPE_17__* %114)
  br label %118

116:                                              ; preds = %47
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_17__* %117, %struct.TYPE_17__** %7, align 8
  br label %118

118:                                              ; preds = %116, %102
  store i32 3, i32* %11, align 4
  br label %119

119:                                              ; preds = %176, %118
  %120 = load i32, i32* %11, align 4
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %125, label %179

125:                                              ; preds = %119
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 4
  %128 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %127, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %128, i64 %130
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %131, align 8
  store %struct.TYPE_19__* %132, %struct.TYPE_19__** %17, align 8
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %134 = call i32 @VALIDATE_SLOTS_INNER(%struct.TYPE_19__* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %125
  store i32 -1, i32* %3, align 4
  br label %210

137:                                              ; preds = %125
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 4
  %140 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %140, i64 0
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %137
  br label %176

147:                                              ; preds = %137
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 4
  %151 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %151, i64 0
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 1
  %155 = load i8*, i8** %154, align 8
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 4
  %158 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %158, i64 0
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 4
  %165 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %165, i64 1
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = trunc i64 %169 to i16
  %171 = load i16, i16* %14, align 2
  %172 = call %struct.TYPE_17__* @cluster_node_create(%struct.TYPE_18__* %148, i8* %155, i32 %162, i16 zeroext %170, i16 signext %171, i32 1)
  store %struct.TYPE_17__* %172, %struct.TYPE_17__** %8, align 8
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %175 = call i32 @cluster_node_add_slave(%struct.TYPE_17__* %173, %struct.TYPE_17__* %174)
  br label %176

176:                                              ; preds = %147, %146
  %177 = load i32, i32* %11, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %11, align 4
  br label %119

179:                                              ; preds = %119
  %180 = load i16, i16* %14, align 2
  %181 = sext i16 %180 to i32
  store i32 %181, i32* %11, align 4
  br label %182

182:                                              ; preds = %195, %179
  %183 = load i32, i32* %11, align 4
  %184 = load i16, i16* %15, align 2
  %185 = sext i16 %184 to i32
  %186 = icmp sle i32 %183, %185
  br i1 %186, label %187, label %198

187:                                              ; preds = %182
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %190, align 8
  %192 = load i32, i32* %11, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %191, i64 %193
  store %struct.TYPE_17__* %188, %struct.TYPE_17__** %194, align 8
  br label %195

195:                                              ; preds = %187
  %196 = load i32, i32* %11, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %11, align 4
  br label %182

198:                                              ; preds = %182
  %199 = load i16, i16* %14, align 2
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  store i16 %199, i16* %200, align 2
  %201 = load i16, i16* %15, align 2
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  store i16 %201, i16* %202, align 2
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 0
  %205 = call i32 @zend_llist_add_element(i32* %204, %struct.TYPE_16__* %9)
  br label %206

206:                                              ; preds = %198
  %207 = load i32, i32* %10, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %10, align 4
  br label %21

209:                                              ; preds = %21
  store i32 0, i32* %3, align 4
  br label %210

210:                                              ; preds = %209, %136, %46
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

declare dso_local i32 @VALIDATE_SLOTS_OUTER(%struct.TYPE_19__*) #1

declare dso_local i32 @VALIDATE_SLOTS_INNER(%struct.TYPE_19__*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i16 zeroext) #1

declare dso_local %struct.TYPE_17__* @zend_hash_str_find_ptr(i32, i8*, i32) #1

declare dso_local %struct.TYPE_17__* @cluster_node_create(%struct.TYPE_18__*, i8*, i32, i16 zeroext, i16 signext, i32) #1

declare dso_local i32 @zend_hash_str_update_ptr(i32, i8*, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @cluster_node_add_slave(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @zend_llist_add_element(i32*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
