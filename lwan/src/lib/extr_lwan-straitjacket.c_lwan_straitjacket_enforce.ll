; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-straitjacket.c_lwan_straitjacket_enforce.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-straitjacket.c_lwan_straitjacket_enforce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_straitjacket = type { i64, i64*, i64 }
%struct.__user_cap_header_struct = type { i32 }
%struct.__user_cap_data_struct = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Straitjacket requires root privileges\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Unknown user: %s\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Could not chroot() to %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Could not chdir() to /\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Jailed to %s\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Could not drop privileges to %s, aborting\00", align 1
@_LINUX_CAPABILITY_VERSION_1 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"Could not drop capabilities\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_straitjacket_enforce(%struct.lwan_straitjacket* %0) #0 {
  %2 = alloca %struct.lwan_straitjacket*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.__user_cap_header_struct, align 4
  %7 = alloca %struct.__user_cap_data_struct, align 4
  store %struct.lwan_straitjacket* %0, %struct.lwan_straitjacket** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.lwan_straitjacket*, %struct.lwan_straitjacket** %2, align 8
  %9 = getelementptr inbounds %struct.lwan_straitjacket, %struct.lwan_straitjacket* %8, i32 0, i32 1
  %10 = load i64*, i64** %9, align 8
  %11 = icmp ne i64* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.lwan_straitjacket*, %struct.lwan_straitjacket** %2, align 8
  %14 = getelementptr inbounds %struct.lwan_straitjacket, %struct.lwan_straitjacket* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  br label %91

18:                                               ; preds = %12, %1
  %19 = call i64 (...) @geteuid()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 (i8*, ...) @lwan_status_critical(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %18
  %24 = load %struct.lwan_straitjacket*, %struct.lwan_straitjacket** %2, align 8
  %25 = getelementptr inbounds %struct.lwan_straitjacket, %struct.lwan_straitjacket* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = icmp ne i64* %26, null
  br i1 %27, label %28, label %46

28:                                               ; preds = %23
  %29 = load %struct.lwan_straitjacket*, %struct.lwan_straitjacket** %2, align 8
  %30 = getelementptr inbounds %struct.lwan_straitjacket, %struct.lwan_straitjacket* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %28
  %35 = load %struct.lwan_straitjacket*, %struct.lwan_straitjacket** %2, align 8
  %36 = getelementptr inbounds %struct.lwan_straitjacket, %struct.lwan_straitjacket* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = call i32 @get_user_uid_gid(i64* %37, i32* %3, i32* %4)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %34
  %41 = load %struct.lwan_straitjacket*, %struct.lwan_straitjacket** %2, align 8
  %42 = getelementptr inbounds %struct.lwan_straitjacket, %struct.lwan_straitjacket* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = call i32 (i8*, ...) @lwan_status_critical(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64* %43)
  br label %45

45:                                               ; preds = %40, %34
  store i32 1, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %28, %23
  %47 = load %struct.lwan_straitjacket*, %struct.lwan_straitjacket** %2, align 8
  %48 = getelementptr inbounds %struct.lwan_straitjacket, %struct.lwan_straitjacket* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %46
  %52 = call i32 (...) @abort_on_open_directories()
  %53 = load %struct.lwan_straitjacket*, %struct.lwan_straitjacket** %2, align 8
  %54 = getelementptr inbounds %struct.lwan_straitjacket, %struct.lwan_straitjacket* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @chroot(i64 %55)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load %struct.lwan_straitjacket*, %struct.lwan_straitjacket** %2, align 8
  %60 = getelementptr inbounds %struct.lwan_straitjacket, %struct.lwan_straitjacket* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = call i32 (i8*, ...) @lwan_status_critical_perror(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %61)
  br label %63

63:                                               ; preds = %58, %51
  %64 = call i64 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = call i32 (i8*, ...) @lwan_status_critical_perror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %63
  %69 = load %struct.lwan_straitjacket*, %struct.lwan_straitjacket** %2, align 8
  %70 = getelementptr inbounds %struct.lwan_straitjacket, %struct.lwan_straitjacket* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @lwan_status_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i64 %71)
  br label %73

73:                                               ; preds = %68, %46
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %73
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load %struct.lwan_straitjacket*, %struct.lwan_straitjacket** %2, align 8
  %80 = getelementptr inbounds %struct.lwan_straitjacket, %struct.lwan_straitjacket* %79, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  %82 = call i32 @switch_to_user(i32 %77, i32 %78, i64* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %76
  %85 = load %struct.lwan_straitjacket*, %struct.lwan_straitjacket** %2, align 8
  %86 = getelementptr inbounds %struct.lwan_straitjacket, %struct.lwan_straitjacket* %85, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  %88 = call i32 (i8*, ...) @lwan_status_critical(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i64* %87)
  br label %89

89:                                               ; preds = %84, %76
  br label %90

90:                                               ; preds = %89, %73
  br label %91

91:                                               ; preds = %90, %17
  %92 = load %struct.lwan_straitjacket*, %struct.lwan_straitjacket** %2, align 8
  %93 = getelementptr inbounds %struct.lwan_straitjacket, %struct.lwan_straitjacket* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.__user_cap_header_struct, %struct.__user_cap_header_struct* %6, i32 0, i32 0
  %98 = load i32, i32* @_LINUX_CAPABILITY_VERSION_1, align 4
  store i32 %98, i32* %97, align 4
  %99 = bitcast %struct.__user_cap_data_struct* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %99, i8 0, i64 4, i1 false)
  %100 = call i64 @capset(%struct.__user_cap_header_struct* %6, %struct.__user_cap_data_struct* %7)
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = call i32 (i8*, ...) @lwan_status_critical_perror(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %96
  br label %105

105:                                              ; preds = %104, %91
  ret void
}

declare dso_local i64 @geteuid(...) #1

declare dso_local i32 @lwan_status_critical(i8*, ...) #1

declare dso_local i32 @get_user_uid_gid(i64*, i32*, i32*) #1

declare dso_local i32 @abort_on_open_directories(...) #1

declare dso_local i64 @chroot(i64) #1

declare dso_local i32 @lwan_status_critical_perror(i8*, ...) #1

declare dso_local i64 @chdir(i8*) #1

declare dso_local i32 @lwan_status_info(i8*, i64) #1

declare dso_local i32 @switch_to_user(i32, i32, i64*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @capset(%struct.__user_cap_header_struct*, %struct.__user_cap_data_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
