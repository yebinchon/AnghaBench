; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_mqtt_match_topic_expression.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_mqtt_match_topic_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_str = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"#\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mg_mqtt_match_topic_expression(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mg_str, align 8
  %5 = alloca %struct.mg_str, align 8
  %6 = alloca %struct.mg_str, align 8
  %7 = alloca %struct.mg_str, align 8
  %8 = alloca %struct.mg_str, align 8
  %9 = alloca %struct.mg_str, align 8
  %10 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %4, i32 0, i32 0
  store i64 %0, i64* %10, align 8
  %11 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %5, i32 0, i32 0
  store i64 %1, i64* %11, align 8
  %12 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %4, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %81

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %39, %52, %69
  %18 = call i64 @mg_mqtt_next_topic_component(%struct.mg_str* %4)
  %19 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %8, i32 0, i32 0
  store i64 %18, i64* %19, align 8
  %20 = bitcast %struct.mg_str* %6 to i8*
  %21 = bitcast %struct.mg_str* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 8, i1 false)
  %22 = call i64 @mg_mqtt_next_topic_component(%struct.mg_str* %5)
  %23 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %9, i32 0, i32 0
  store i64 %22, i64* %23, align 8
  %24 = bitcast %struct.mg_str* %7 to i8*
  %25 = bitcast %struct.mg_str* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 8, i1 false)
  %26 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %6, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %7, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %81

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %4, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %70

39:                                               ; preds = %34
  br label %17

40:                                               ; preds = %17
  %41 = call i64 @mg_vcmp(%struct.mg_str* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %7, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %5, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %81

52:                                               ; preds = %47, %43
  br label %17

53:                                               ; preds = %40
  %54 = call i64 @mg_vcmp(%struct.mg_str* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %4, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %3, align 4
  br label %81

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %6, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %7, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @mg_strcmp(i64 %63, i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %81

69:                                               ; preds = %61
  br label %17

70:                                               ; preds = %38
  %71 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %7, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %5, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br label %78

78:                                               ; preds = %74, %70
  %79 = phi i1 [ false, %70 ], [ %77, %74 ]
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %78, %68, %56, %51, %33, %15
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i64 @mg_mqtt_next_topic_component(%struct.mg_str*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @mg_vcmp(%struct.mg_str*, i8*) #1

declare dso_local i64 @mg_strcmp(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
