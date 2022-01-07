; ModuleID = '/home/carl/AnghaBench/netdata/web/api/extr_web_api_v1.c_web_client_api_v1_init.c'
source_filename = "/home/carl/AnghaBench/netdata/web/api/extr_web_api_v1.c_web_client_api_v1_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8* }
%struct.TYPE_6__ = type { i64, i8* }
%struct.TYPE_5__ = type { i64, i8* }

@api_v1_data_options = common dso_local global %struct.TYPE_4__* null, align 8
@api_v1_data_formats = common dso_local global %struct.TYPE_6__* null, align 8
@api_v1_data_google_formats = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @web_client_api_v1_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [37 x i8], align 16
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %25, %0
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @api_v1_data_options, align 8
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @api_v1_data_options, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i8* @simple_hash(i64 %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @api_v1_data_options, align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i8* %19, i8** %24, align 8
  br label %25

25:                                               ; preds = %12
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %1, align 4
  br label %4

28:                                               ; preds = %4
  store i32 0, i32* %1, align 4
  br label %29

29:                                               ; preds = %50, %28
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @api_v1_data_formats, align 8
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %29
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** @api_v1_data_formats, align 8
  %39 = load i32, i32* %1, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i8* @simple_hash(i64 %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @api_v1_data_formats, align 8
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  store i8* %44, i8** %49, align 8
  br label %50

50:                                               ; preds = %37
  %51 = load i32, i32* %1, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %1, align 4
  br label %29

53:                                               ; preds = %29
  store i32 0, i32* %1, align 4
  br label %54

54:                                               ; preds = %75, %53
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** @api_v1_data_google_formats, align 8
  %56 = load i32, i32* %1, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %54
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** @api_v1_data_google_formats, align 8
  %64 = load i32, i32* %1, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i8* @simple_hash(i64 %68)
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** @api_v1_data_google_formats, align 8
  %71 = load i32, i32* %1, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  store i8* %69, i8** %74, align 8
  br label %75

75:                                               ; preds = %62
  %76 = load i32, i32* %1, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %1, align 4
  br label %54

78:                                               ; preds = %54
  %79 = call i32 (...) @web_client_api_v1_init_grouping()
  %80 = load i32, i32* %2, align 4
  %81 = call i32 @uuid_generate(i32 %80)
  %82 = load i32, i32* %2, align 4
  %83 = getelementptr inbounds [37 x i8], [37 x i8]* %3, i64 0, i64 0
  %84 = call i32 @uuid_unparse_lower(i32 %82, i8* %83)
  ret void
}

declare dso_local i8* @simple_hash(i64) #1

declare dso_local i32 @web_client_api_v1_init_grouping(...) #1

declare dso_local i32 @uuid_generate(i32) #1

declare dso_local i32 @uuid_unparse_lower(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
