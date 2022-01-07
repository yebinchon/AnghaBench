; ModuleID = '/home/carl/AnghaBench/netdata/collectors/slabinfo.plugin/extr_slabinfo.c_get_slabstruct.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/slabinfo.plugin/extr_slabinfo.c_get_slabstruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slabinfo = type { i64, %struct.slabinfo*, i32 }

@.str = private unnamed_addr constant [28 x i8] c"--> Requested slabstruct %s\00", align 1
@slabinfo_next = common dso_local global %struct.slabinfo* null, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"<-- Found existing slabstruct after %s\00", align 1
@slabinfo_last_used = common dso_local global %struct.slabinfo* null, align 8
@slabinfo_root = common dso_local global %struct.slabinfo* null, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"<-- Found existing slabstruct after root %s\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"<-- Creating new slabstruct after %s\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"<-- Creating new slabstruct as root\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.slabinfo* (i8*)* @get_slabstruct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.slabinfo* @get_slabstruct(i8* %0) #0 {
  %2 = alloca %struct.slabinfo*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.slabinfo*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 (i8*, ...) @slabdebug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %6)
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @simple_hash(i8* %8)
  store i64 %9, i64* %5, align 8
  %10 = load %struct.slabinfo*, %struct.slabinfo** @slabinfo_next, align 8
  store %struct.slabinfo* %10, %struct.slabinfo** %4, align 8
  br label %11

11:                                               ; preds = %37, %1
  %12 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %13 = icmp ne %struct.slabinfo* %12, null
  br i1 %13, label %14, label %41

14:                                               ; preds = %11
  %15 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %16 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %14
  %20 = load i8*, i8** %3, align 8
  %21 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %22 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @strcmp(i8* %20, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %19
  %27 = load %struct.slabinfo*, %struct.slabinfo** @slabinfo_last_used, align 8
  %28 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i8*, ...) @slabdebug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %32 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %31, i32 0, i32 1
  %33 = load %struct.slabinfo*, %struct.slabinfo** %32, align 8
  store %struct.slabinfo* %33, %struct.slabinfo** @slabinfo_next, align 8
  %34 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  store %struct.slabinfo* %34, %struct.slabinfo** @slabinfo_last_used, align 8
  %35 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  store %struct.slabinfo* %35, %struct.slabinfo** %2, align 8
  br label %105

36:                                               ; preds = %19, %14
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %39 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %38, i32 0, i32 1
  %40 = load %struct.slabinfo*, %struct.slabinfo** %39, align 8
  store %struct.slabinfo* %40, %struct.slabinfo** %4, align 8
  br label %11

41:                                               ; preds = %11
  %42 = load %struct.slabinfo*, %struct.slabinfo** @slabinfo_root, align 8
  store %struct.slabinfo* %42, %struct.slabinfo** %4, align 8
  br label %43

43:                                               ; preds = %71, %41
  %44 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %45 = load %struct.slabinfo*, %struct.slabinfo** @slabinfo_last_used, align 8
  %46 = icmp ne %struct.slabinfo* %44, %45
  br i1 %46, label %47, label %75

47:                                               ; preds = %43
  %48 = load i64, i64* %5, align 8
  %49 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %50 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %53, label %70

53:                                               ; preds = %47
  %54 = load i8*, i8** %3, align 8
  %55 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %56 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @strcmp(i8* %54, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %53
  %61 = load %struct.slabinfo*, %struct.slabinfo** @slabinfo_root, align 8
  %62 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i8*, ...) @slabdebug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %66 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %65, i32 0, i32 1
  %67 = load %struct.slabinfo*, %struct.slabinfo** %66, align 8
  store %struct.slabinfo* %67, %struct.slabinfo** @slabinfo_next, align 8
  %68 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  store %struct.slabinfo* %68, %struct.slabinfo** @slabinfo_last_used, align 8
  %69 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  store %struct.slabinfo* %69, %struct.slabinfo** %2, align 8
  br label %105

70:                                               ; preds = %53, %47
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %73 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %72, i32 0, i32 1
  %74 = load %struct.slabinfo*, %struct.slabinfo** %73, align 8
  store %struct.slabinfo* %74, %struct.slabinfo** %4, align 8
  br label %43

75:                                               ; preds = %43
  %76 = call %struct.slabinfo* @callocz(i32 1, i32 24)
  store %struct.slabinfo* %76, %struct.slabinfo** %4, align 8
  %77 = load i8*, i8** %3, align 8
  %78 = call i32 @strdupz(i8* %77)
  %79 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %80 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load i64, i64* %5, align 8
  %82 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %83 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load %struct.slabinfo*, %struct.slabinfo** @slabinfo_root, align 8
  %85 = icmp ne %struct.slabinfo* %84, null
  br i1 %85, label %86, label %100

86:                                               ; preds = %75
  %87 = load %struct.slabinfo*, %struct.slabinfo** @slabinfo_last_used, align 8
  %88 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (i8*, ...) @slabdebug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  %91 = load %struct.slabinfo*, %struct.slabinfo** @slabinfo_last_used, align 8
  %92 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %91, i32 0, i32 1
  %93 = load %struct.slabinfo*, %struct.slabinfo** %92, align 8
  %94 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %95 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %94, i32 0, i32 1
  store %struct.slabinfo* %93, %struct.slabinfo** %95, align 8
  %96 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  %97 = load %struct.slabinfo*, %struct.slabinfo** @slabinfo_last_used, align 8
  %98 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %97, i32 0, i32 1
  store %struct.slabinfo* %96, %struct.slabinfo** %98, align 8
  %99 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  store %struct.slabinfo* %99, %struct.slabinfo** @slabinfo_last_used, align 8
  br label %103

100:                                              ; preds = %75
  %101 = call i32 (i8*, ...) @slabdebug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %102 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  store %struct.slabinfo* %102, %struct.slabinfo** @slabinfo_last_used, align 8
  store %struct.slabinfo* %102, %struct.slabinfo** @slabinfo_root, align 8
  br label %103

103:                                              ; preds = %100, %86
  %104 = load %struct.slabinfo*, %struct.slabinfo** %4, align 8
  store %struct.slabinfo* %104, %struct.slabinfo** %2, align 8
  br label %105

105:                                              ; preds = %103, %60, %26
  %106 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  ret %struct.slabinfo* %106
}

declare dso_local i32 @slabdebug(i8*, ...) #1

declare dso_local i64 @simple_hash(i8*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local %struct.slabinfo* @callocz(i32, i32) #1

declare dso_local i32 @strdupz(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
