; ModuleID = '/home/carl/AnghaBench/proxychains-ng/src/extr_allocator_thread.c_ip_from_internal_list.c'
source_filename = "/home/carl/AnghaBench/proxychains-ng/src/extr_allocator_thread.c_ip_from_internal_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_12__** }
%struct.TYPE_12__ = type { i64, i8* }
%struct.TYPE_13__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32 }

@internal_ips = common dso_local global %struct.TYPE_14__* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"got cached ip for %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"realloc\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"out of mem\0A\00", align 1
@ip_type_invalid = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"creating new entry %d for ip of %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"return err\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64)* @ip_from_internal_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ip_from_internal_list(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_11__, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_11__, align 8
  %11 = alloca %struct.TYPE_11__, align 8
  %12 = alloca %struct.TYPE_10__, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @dalias_hash(i8* %13)
  store i64 %14, i64* %6, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** @internal_ips, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %62

19:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %20

20:                                               ; preds = %58, %19
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** @internal_ips, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %61

26:                                               ; preds = %20
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** @internal_ips, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %29, i64 %30
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %57

37:                                               ; preds = %26
  %38 = load i8*, i8** %4, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** @internal_ips, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %41, i64 %42
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @strcmp(i8* %38, i8* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %37
  %50 = load i64, i64* %7, align 8
  %51 = call i64 @make_internal_ip(i64 %50)
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  store i64 %51, i64* %52, align 8
  %53 = bitcast %struct.TYPE_11__* %8 to i8*
  %54 = bitcast %struct.TYPE_11__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 8, i1 false)
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 (i8*, ...) @PDEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %55)
  br label %175

57:                                               ; preds = %37, %26
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %7, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %7, align 8
  br label %20

61:                                               ; preds = %20
  br label %62

62:                                               ; preds = %61, %2
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** @internal_ips, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** @internal_ips, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %69, 1
  %71 = icmp ult i64 %66, %70
  br i1 %71, label %72, label %100

72:                                               ; preds = %62
  %73 = call i32 (i8*, ...) @PDEBUG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** @internal_ips, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %75, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** @internal_ips, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 16
  %81 = sext i32 %80 to i64
  %82 = mul i64 %81, 8
  %83 = trunc i64 %82 to i32
  %84 = call i8* @realloc(%struct.TYPE_12__** %76, i32 %83)
  store i8* %84, i8** %9, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %96

87:                                               ; preds = %72
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** @internal_ips, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 16
  store i32 %91, i32* %89, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = bitcast i8* %92 to %struct.TYPE_12__**
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** @internal_ips, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 2
  store %struct.TYPE_12__** %93, %struct.TYPE_12__*** %95, align 8
  br label %99

96:                                               ; preds = %72
  br label %97

97:                                               ; preds = %152, %119, %96
  %98 = call i32 (i8*, ...) @PDEBUG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %178

99:                                               ; preds = %87
  br label %100

100:                                              ; preds = %99, %62
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** @internal_ips, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i64 @make_internal_ip(i64 %103)
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  store i64 %104, i64* %105, align 8
  %106 = bitcast %struct.TYPE_11__* %8 to i8*
  %107 = bitcast %struct.TYPE_11__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %106, i8* align 8 %107, i64 8, i1 false)
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ip_type_invalid, i32 0, i32 0, i32 0, i32 0), align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %100
  br label %178

113:                                              ; preds = %100
  %114 = bitcast %struct.TYPE_10__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %114, i8 0, i64 4, i1 false)
  %115 = bitcast %struct.TYPE_10__* %12 to i8*
  %116 = call i8* @dumpstring(i8* %115, i64 4)
  store i8* %116, i8** %9, align 8
  %117 = load i8*, i8** %9, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %113
  br label %97

120:                                              ; preds = %113
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** @internal_ips, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = trunc i64 %123 to i32
  %125 = load i8*, i8** %4, align 8
  %126 = call i32 (i8*, ...) @PDEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %124, i8* %125)
  %127 = load i8*, i8** %9, align 8
  %128 = bitcast i8* %127 to %struct.TYPE_12__*
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** @internal_ips, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %130, align 8
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** @internal_ips, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %131, i64 %134
  store %struct.TYPE_12__* %128, %struct.TYPE_12__** %135, align 8
  %136 = load i64, i64* %6, align 8
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** @internal_ips, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %138, align 8
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** @internal_ips, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %139, i64 %142
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  store i64 %136, i64* %145, align 8
  %146 = load i8*, i8** %4, align 8
  %147 = load i64, i64* %5, align 8
  %148 = add i64 %147, 1
  %149 = call i8* @dumpstring(i8* %146, i64 %148)
  store i8* %149, i8** %9, align 8
  %150 = load i8*, i8** %9, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %160, label %152

152:                                              ; preds = %120
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** @internal_ips, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 2
  %155 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %154, align 8
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** @internal_ips, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %155, i64 %158
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %159, align 8
  br label %97

160:                                              ; preds = %120
  %161 = load i8*, i8** %9, align 8
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** @internal_ips, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 2
  %164 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %163, align 8
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** @internal_ips, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %164, i64 %167
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 1
  store i8* %161, i8** %170, align 8
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** @internal_ips, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = add i64 %173, 1
  store i64 %174, i64* %172, align 8
  br label %175

175:                                              ; preds = %160, %49
  %176 = bitcast %struct.TYPE_11__* %3 to i8*
  %177 = bitcast %struct.TYPE_11__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %176, i8* align 8 %177, i64 8, i1 false)
  br label %181

178:                                              ; preds = %112, %97
  %179 = call i32 (i8*, ...) @PDEBUG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %180 = bitcast %struct.TYPE_11__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %180, i8* align 8 bitcast (%struct.TYPE_13__* @ip_type_invalid to i8*), i64 8, i1 false)
  br label %181

181:                                              ; preds = %178, %175
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  ret i64 %183
}

declare dso_local i64 @dalias_hash(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @make_internal_ip(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @PDEBUG(i8*, ...) #1

declare dso_local i8* @realloc(%struct.TYPE_12__**, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @dumpstring(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
