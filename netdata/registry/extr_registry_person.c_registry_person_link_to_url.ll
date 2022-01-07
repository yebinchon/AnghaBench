; ModuleID = '/home/carl/AnghaBench/netdata/registry/extr_registry_person.c_registry_person_link_to_url.c'
source_filename = "/home/carl/AnghaBench/netdata/registry/extr_registry_person.c_registry_person_link_to_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32 }
%struct.TYPE_25__ = type { i64, i32, i32, %struct.TYPE_28__*, i32 }
%struct.TYPE_26__ = type { i64, i32, i32 }
%struct.TYPE_28__ = type { i32, i32, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_27__ = type { i32 }

@D_REGISTRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"registry_person_link_to_url('%s', '%s', '%s'): searching for URL in person\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"registry_person_link_to_url('%s', '%s', '%s'): not found\00", align 1
@registry = common dso_local global %struct.TYPE_24__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"registry_person_link_to_url('%s', '%s', '%s'): found\00", align 1
@.str.3 = private unnamed_addr constant [121 x i8] c"registry_person_link_to_url('%s', '%s', '%s'): URL switched machines (old was '%s') - expiring it from previous machine.\00", align 1
@REGISTRY_URL_FLAGS_EXPIRED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [132 x i8] c"registry_person_link_to_url('%s', '%s', '%s'): URL switched machines (old was '%s') - but the URL is not linked to the old machine.\00", align 1
@.str.5 = private unnamed_addr constant [90 x i8] c"registry_person_link_to_url('%s', '%s', '%s'): accessing an expired URL. Re-enabling URL.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_25__* @registry_person_link_to_url(%struct.TYPE_26__* %0, %struct.TYPE_28__* %1, %struct.TYPE_23__* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_25__*, align 8
  %14 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %7, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %8, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %15 = load i32, i32* @D_REGISTRY, align 4
  %16 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i32, i8*, i32, i32, i32, ...) @debug(i32 %15, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21, i32 %24)
  %26 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.TYPE_25__* @registry_person_url_index_find(%struct.TYPE_26__* %26, i32 %29)
  store %struct.TYPE_25__* %30, %struct.TYPE_25__** %13, align 8
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %32 = icmp ne %struct.TYPE_25__* %31, null
  br i1 %32, label %54, label %33

33:                                               ; preds = %6
  %34 = load i32, i32* @D_REGISTRY, align 4
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i32, i8*, i32, i32, i32, ...) @debug(i32 %34, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %40, i32 %43)
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %46 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* %12, align 8
  %51 = call %struct.TYPE_25__* @registry_person_url_allocate(%struct.TYPE_26__* %45, %struct.TYPE_28__* %46, %struct.TYPE_23__* %47, i8* %48, i64 %49, i64 %50)
  store %struct.TYPE_25__* %51, %struct.TYPE_25__** %13, align 8
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @registry, i32 0, i32 0), align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @registry, i32 0, i32 0), align 4
  br label %166

54:                                               ; preds = %6
  %55 = load i32, i32* @D_REGISTRY, align 4
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i32, i8*, i32, i32, i32, ...) @debug(i32 %55, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %58, i32 %61, i32 %64)
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %12, align 8
  %74 = icmp slt i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i64 @likely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %54
  %79 = load i64, i64* %12, align 8
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %78, %54
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_28__*, %struct.TYPE_28__** %84, align 8
  %86 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %87 = icmp ne %struct.TYPE_28__* %85, %86
  br i1 %87, label %88, label %149

88:                                               ; preds = %82
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_28__*, %struct.TYPE_28__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call %struct.TYPE_27__* @dictionary_get(i32 %93, i32 %96)
  store %struct.TYPE_27__* %97, %struct.TYPE_27__** %14, align 8
  %98 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %99 = icmp ne %struct.TYPE_27__* %98, null
  br i1 %99, label %100, label %122

100:                                              ; preds = %88
  %101 = load i32, i32* @D_REGISTRY, align 4
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i32 0, i32 3
  %113 = load %struct.TYPE_28__*, %struct.TYPE_28__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i32, i8*, i32, i32, i32, ...) @debug(i32 %101, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.3, i64 0, i64 0), i32 %104, i32 %107, i32 %110, i32 %115)
  %117 = load i32, i32* @REGISTRY_URL_FLAGS_EXPIRED, align 4
  %118 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 4
  br label %139

122:                                              ; preds = %88
  %123 = load i32, i32* @D_REGISTRY, align 4
  %124 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i32 0, i32 3
  %135 = load %struct.TYPE_28__*, %struct.TYPE_28__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (i32, i8*, i32, i32, i32, ...) @debug(i32 %123, i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.4, i64 0, i64 0), i32 %126, i32 %129, i32 %132, i32 %137)
  br label %139

139:                                              ; preds = %122, %100
  %140 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %140, i32 0, i32 3
  %142 = load %struct.TYPE_28__*, %struct.TYPE_28__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, -1
  store i32 %145, i32* %143, align 4
  %146 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %147 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %147, i32 0, i32 3
  store %struct.TYPE_28__* %146, %struct.TYPE_28__** %148, align 8
  br label %149

149:                                              ; preds = %139, %82
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load i8*, i8** %10, align 8
  %154 = call i64 @strcmp(i32 %152, i8* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %149
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %158 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %160 = load i8*, i8** %10, align 8
  %161 = load i64, i64* %11, align 8
  %162 = load i64, i64* %12, align 8
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %164 = call %struct.TYPE_25__* @registry_person_url_reallocate(%struct.TYPE_26__* %157, %struct.TYPE_28__* %158, %struct.TYPE_23__* %159, i8* %160, i64 %161, i64 %162, %struct.TYPE_25__* %163)
  store %struct.TYPE_25__* %164, %struct.TYPE_25__** %13, align 8
  br label %165

165:                                              ; preds = %156, %149
  br label %166

166:                                              ; preds = %165, %33
  %167 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %168, align 4
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* %12, align 8
  %175 = icmp slt i64 %173, %174
  %176 = zext i1 %175 to i32
  %177 = call i64 @likely(i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %166
  %180 = load i64, i64* %12, align 8
  %181 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %181, i32 0, i32 0
  store i64 %180, i64* %182, align 8
  br label %183

183:                                              ; preds = %179, %166
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %185 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @REGISTRY_URL_FLAGS_EXPIRED, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %208

190:                                              ; preds = %183
  %191 = load i32, i32* @D_REGISTRY, align 4
  %192 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 (i32, i8*, i32, i32, i32, ...) @debug(i32 %191, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.5, i64 0, i64 0), i32 %194, i32 %197, i32 %200)
  %202 = load i32, i32* @REGISTRY_URL_FLAGS_EXPIRED, align 4
  %203 = xor i32 %202, -1
  %204 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %205 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = and i32 %206, %203
  store i32 %207, i32* %205, align 8
  br label %208

208:                                              ; preds = %190, %183
  %209 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  ret %struct.TYPE_25__* %209
}

declare dso_local i32 @debug(i32, i8*, i32, i32, i32, ...) #1

declare dso_local %struct.TYPE_25__* @registry_person_url_index_find(%struct.TYPE_26__*, i32) #1

declare dso_local %struct.TYPE_25__* @registry_person_url_allocate(%struct.TYPE_26__*, %struct.TYPE_28__*, %struct.TYPE_23__*, i8*, i64, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.TYPE_27__* @dictionary_get(i32, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.TYPE_25__* @registry_person_url_reallocate(%struct.TYPE_26__*, %struct.TYPE_28__*, %struct.TYPE_23__*, i8*, i64, i64, %struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
