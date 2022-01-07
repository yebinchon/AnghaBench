; ModuleID = '/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_self_mountinfo.c_mountinfo_find_by_filesystem_super_option.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_self_mountinfo.c_mountinfo_find_by_filesystem_super_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mountinfo = type { i8*, i64, i64, %struct.mountinfo* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mountinfo* @mountinfo_find_by_filesystem_super_option(%struct.mountinfo* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.mountinfo*, align 8
  %5 = alloca %struct.mountinfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mountinfo*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.mountinfo* %0, %struct.mountinfo** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @simple_hash(i8* %14)
  store i64 %15, i64* %9, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i64 @strlen(i8* %16)
  store i64 %17, i64* %10, align 8
  %18 = load %struct.mountinfo*, %struct.mountinfo** %5, align 8
  store %struct.mountinfo* %18, %struct.mountinfo** %8, align 8
  br label %19

19:                                               ; preds = %113, %3
  %20 = load %struct.mountinfo*, %struct.mountinfo** %8, align 8
  %21 = icmp ne %struct.mountinfo* %20, null
  br i1 %21, label %22, label %117

22:                                               ; preds = %19
  %23 = load %struct.mountinfo*, %struct.mountinfo** %8, align 8
  %24 = getelementptr inbounds %struct.mountinfo, %struct.mountinfo* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %22
  %28 = load %struct.mountinfo*, %struct.mountinfo** %8, align 8
  %29 = getelementptr inbounds %struct.mountinfo, %struct.mountinfo* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %46

32:                                               ; preds = %27
  %33 = load %struct.mountinfo*, %struct.mountinfo** %8, align 8
  %34 = getelementptr inbounds %struct.mountinfo, %struct.mountinfo* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load %struct.mountinfo*, %struct.mountinfo** %8, align 8
  %40 = getelementptr inbounds %struct.mountinfo, %struct.mountinfo* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @strcmp(i64 %41, i8* %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br label %46

46:                                               ; preds = %38, %32, %27, %22
  %47 = phi i1 [ false, %32 ], [ false, %27 ], [ false, %22 ], [ %45, %38 ]
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %112

51:                                               ; preds = %46
  %52 = load %struct.mountinfo*, %struct.mountinfo** %8, align 8
  %53 = getelementptr inbounds %struct.mountinfo, %struct.mountinfo* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %11, align 8
  br label %55

55:                                               ; preds = %110, %51
  %56 = load i8*, i8** %11, align 8
  %57 = load i8, i8* %56, align 1
  %58 = icmp ne i8 %57, 0
  br i1 %58, label %59, label %111

59:                                               ; preds = %55
  %60 = load i8*, i8** %11, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  store i8* %61, i8** %12, align 8
  br label %62

62:                                               ; preds = %74, %59
  %63 = load i8*, i8** %12, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load i8*, i8** %12, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 44
  br label %72

72:                                               ; preds = %67, %62
  %73 = phi i1 [ false, %62 ], [ %71, %67 ]
  br i1 %73, label %74, label %77

74:                                               ; preds = %72
  %75 = load i8*, i8** %12, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %12, align 8
  br label %62

77:                                               ; preds = %72
  %78 = load i8*, i8** %12, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = ptrtoint i8* %78 to i64
  %81 = ptrtoint i8* %79 to i64
  %82 = sub i64 %80, %81
  store i64 %82, i64* %13, align 8
  %83 = load i64, i64* %13, align 8
  %84 = load i64, i64* %10, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %77
  %87 = load i8*, i8** %11, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = load i64, i64* %13, align 8
  %90 = call i32 @strncmp(i8* %87, i8* %88, i64 %89)
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  br label %93

93:                                               ; preds = %86, %77
  %94 = phi i1 [ false, %77 ], [ %92, %86 ]
  %95 = zext i1 %94 to i32
  %96 = call i64 @unlikely(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load %struct.mountinfo*, %struct.mountinfo** %8, align 8
  store %struct.mountinfo* %99, %struct.mountinfo** %4, align 8
  br label %118

100:                                              ; preds = %93
  %101 = load i8*, i8** %12, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 44
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i8*, i8** %12, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %12, align 8
  store i8* %107, i8** %11, align 8
  br label %110

108:                                              ; preds = %100
  %109 = load i8*, i8** %12, align 8
  store i8* %109, i8** %11, align 8
  br label %110

110:                                              ; preds = %108, %105
  br label %55

111:                                              ; preds = %55
  br label %112

112:                                              ; preds = %111, %46
  br label %113

113:                                              ; preds = %112
  %114 = load %struct.mountinfo*, %struct.mountinfo** %8, align 8
  %115 = getelementptr inbounds %struct.mountinfo, %struct.mountinfo* %114, i32 0, i32 3
  %116 = load %struct.mountinfo*, %struct.mountinfo** %115, align 8
  store %struct.mountinfo* %116, %struct.mountinfo** %8, align 8
  br label %19

117:                                              ; preds = %19
  store %struct.mountinfo* null, %struct.mountinfo** %4, align 8
  br label %118

118:                                              ; preds = %117, %98
  %119 = load %struct.mountinfo*, %struct.mountinfo** %4, align 8
  ret %struct.mountinfo* %119
}

declare dso_local i64 @simple_hash(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @strcmp(i64, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
