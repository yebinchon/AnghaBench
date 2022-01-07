; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao.c_ao_device_list_add.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao.c_ao_device_list_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao_device_list = type { i64, i32 }
%struct.ao = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%struct.ao_device_desc = type { i8*, i8* }

@.str = private unnamed_addr constant [13 x i8] c"Default (%s)\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ao_device_list_add(%struct.ao_device_list* %0, %struct.ao* %1, %struct.ao_device_desc* %2) #0 {
  %4 = alloca %struct.ao_device_list*, align 8
  %5 = alloca %struct.ao*, align 8
  %6 = alloca %struct.ao_device_desc*, align 8
  %7 = alloca %struct.ao_device_desc, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [80 x i8], align 16
  store %struct.ao_device_list* %0, %struct.ao_device_list** %4, align 8
  store %struct.ao* %1, %struct.ao** %5, align 8
  store %struct.ao_device_desc* %2, %struct.ao_device_desc** %6, align 8
  %10 = load %struct.ao_device_desc*, %struct.ao_device_desc** %6, align 8
  %11 = bitcast %struct.ao_device_desc* %7 to i8*
  %12 = bitcast %struct.ao_device_desc* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 16, i1 false)
  %13 = load %struct.ao*, %struct.ao** %5, align 8
  %14 = getelementptr inbounds %struct.ao, %struct.ao* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %8, align 8
  %18 = getelementptr inbounds %struct.ao_device_desc, %struct.ao_device_desc* %7, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.ao_device_desc, %struct.ao_device_desc* %7, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %57, label %27

27:                                               ; preds = %21, %3
  %28 = getelementptr inbounds %struct.ao_device_desc, %struct.ao_device_desc* %7, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ao_device_desc, %struct.ao_device_desc* %7, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.ao_device_desc, %struct.ao_device_desc* %7, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds %struct.ao_device_desc, %struct.ao_device_desc* %7, i32 0, i32 0
  store i8* %40, i8** %41, align 8
  br label %56

42:                                               ; preds = %31, %27
  %43 = load %struct.ao_device_list*, %struct.ao_device_list** %4, align 8
  %44 = getelementptr inbounds %struct.ao_device_list, %struct.ao_device_list* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @snprintf(i8* %48, i32 80, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %49)
  %51 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %52 = getelementptr inbounds %struct.ao_device_desc, %struct.ao_device_desc* %7, i32 0, i32 0
  store i8* %51, i8** %52, align 8
  br label %55

53:                                               ; preds = %42
  %54 = getelementptr inbounds %struct.ao_device_desc, %struct.ao_device_desc* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %54, align 8
  br label %55

55:                                               ; preds = %53, %47
  br label %56

56:                                               ; preds = %55, %38
  br label %57

57:                                               ; preds = %56, %21
  %58 = getelementptr inbounds %struct.ao_device_desc, %struct.ao_device_desc* %7, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %74

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.ao_device_desc, %struct.ao_device_desc* %7, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load %struct.ao_device_list*, %struct.ao_device_list** %4, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = getelementptr inbounds %struct.ao_device_desc, %struct.ao_device_desc* %7, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = call i8* @talloc_asprintf(%struct.ao_device_list* %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %70, i8* %72)
  br label %78

74:                                               ; preds = %61, %57
  %75 = load %struct.ao_device_list*, %struct.ao_device_list** %4, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = call i8* @talloc_strdup(%struct.ao_device_list* %75, i8* %76)
  br label %78

78:                                               ; preds = %74, %68
  %79 = phi i8* [ %73, %68 ], [ %77, %74 ]
  %80 = getelementptr inbounds %struct.ao_device_desc, %struct.ao_device_desc* %7, i32 0, i32 1
  store i8* %79, i8** %80, align 8
  %81 = load %struct.ao_device_list*, %struct.ao_device_list** %4, align 8
  %82 = getelementptr inbounds %struct.ao_device_desc, %struct.ao_device_desc* %7, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i8* @talloc_strdup(%struct.ao_device_list* %81, i8* %83)
  %85 = getelementptr inbounds %struct.ao_device_desc, %struct.ao_device_desc* %7, i32 0, i32 0
  store i8* %84, i8** %85, align 8
  %86 = load %struct.ao_device_list*, %struct.ao_device_list** %4, align 8
  %87 = load %struct.ao_device_list*, %struct.ao_device_list** %4, align 8
  %88 = getelementptr inbounds %struct.ao_device_list, %struct.ao_device_list* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.ao_device_list*, %struct.ao_device_list** %4, align 8
  %91 = getelementptr inbounds %struct.ao_device_list, %struct.ao_device_list* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = bitcast %struct.ao_device_desc* %7 to { i8*, i8* }*
  %94 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %93, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @MP_TARRAY_APPEND(%struct.ao_device_list* %86, i32 %89, i64 %92, i8* %95, i8* %97)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @talloc_asprintf(%struct.ao_device_list*, i8*, i8*, i8*) #2

declare dso_local i8* @talloc_strdup(%struct.ao_device_list*, i8*) #2

declare dso_local i32 @MP_TARRAY_APPEND(%struct.ao_device_list*, i32, i64, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
