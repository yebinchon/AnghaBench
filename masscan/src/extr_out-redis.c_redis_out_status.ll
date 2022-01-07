; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_out-redis.c_redis_out_status.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_out-redis.c_redis_out_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Output = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"%u.%u.%u.%u\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%u/%s\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"*3\0D\0A$4\0D\0ASADD\0D\0A$%d\0D\0A%s\0D\0A$%d\0D\0A%s\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"redis: error sending data\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"%u:%u:%u:%u\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"*3\0D\0A$4\0D\0ASADD\0D\0A$%d\0D\0A%s:%s\0D\0A$%d\0D\0A%s\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Output*, i32*, i64, i32, i32, i32, i32, i32, i32)* @redis_out_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redis_out_status(%struct.Output* %0, i32* %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.Output*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca [1024 x i8], align 16
  %21 = alloca i32, align 4
  %22 = alloca [16 x i8], align 16
  %23 = alloca [10 x i8], align 1
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca [64 x i8], align 16
  %28 = alloca i32, align 4
  store %struct.Output* %0, %struct.Output** %10, align 8
  store i32* %1, i32** %11, align 8
  store i64 %2, i64* %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %29 = load i32*, i32** %11, align 8
  %30 = ptrtoint i32* %29 to i64
  store i64 %30, i64* %19, align 8
  %31 = getelementptr inbounds [16 x i8], [16 x i8]* %22, i64 0, i64 0
  %32 = load i32, i32* %14, align 4
  %33 = lshr i32 %32, 24
  %34 = trunc i32 %33 to i8
  %35 = zext i8 %34 to i32
  %36 = load i32, i32* %14, align 4
  %37 = lshr i32 %36, 16
  %38 = trunc i32 %37 to i8
  %39 = zext i8 %38 to i32
  %40 = load i32, i32* %14, align 4
  %41 = lshr i32 %40, 8
  %42 = trunc i32 %41 to i8
  %43 = zext i8 %42 to i32
  %44 = load i32, i32* %14, align 4
  %45 = lshr i32 %44, 0
  %46 = trunc i32 %45 to i8
  %47 = zext i8 %46 to i32
  %48 = call i32 (i8*, i32, i8*, i32, ...) @sprintf_s(i8* %31, i32 16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %39, i32 %43, i32 %47)
  store i32 %48, i32* %24, align 4
  %49 = getelementptr inbounds [10 x i8], [10 x i8]* %23, i64 0, i64 0
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* %15, align 4
  %52 = call i8* @name_from_ip_proto(i32 %51)
  %53 = call i32 (i8*, i32, i8*, i32, ...) @sprintf_s(i8* %49, i32 10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %50, i8* %52)
  store i32 %53, i32* %25, align 4
  %54 = getelementptr inbounds [1024 x i8], [1024 x i8]* %20, i64 0, i64 0
  %55 = load i32, i32* %24, align 4
  %56 = getelementptr inbounds [16 x i8], [16 x i8]* %22, i64 0, i64 0
  %57 = call i32 (i8*, i32, i8*, i32, ...) @sprintf_s(i8* %54, i32 1024, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %55, i8* %56)
  %58 = load i64, i64* %19, align 8
  %59 = trunc i64 %58 to i32
  %60 = getelementptr inbounds [1024 x i8], [1024 x i8]* %20, i64 0, i64 0
  %61 = getelementptr inbounds [1024 x i8], [1024 x i8]* %20, i64 0, i64 0
  %62 = call i64 @strlen(i8* %61)
  %63 = trunc i64 %62 to i32
  %64 = call i64 @send(i32 %59, i8* %60, i32 %63, i32 0)
  store i64 %64, i64* %26, align 8
  %65 = load i64, i64* %26, align 8
  %66 = getelementptr inbounds [1024 x i8], [1024 x i8]* %20, i64 0, i64 0
  %67 = call i64 @strlen(i8* %66)
  %68 = icmp ne i64 %65, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %9
  %70 = call i32 @LOG(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %71 = call i32 @exit(i32 1) #3
  unreachable

72:                                               ; preds = %9
  %73 = load %struct.Output*, %struct.Output** %10, align 8
  %74 = getelementptr inbounds %struct.Output, %struct.Output* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = getelementptr inbounds [1024 x i8], [1024 x i8]* %20, i64 0, i64 0
  %79 = load i32, i32* %24, align 4
  %80 = getelementptr inbounds [16 x i8], [16 x i8]* %22, i64 0, i64 0
  %81 = load i32, i32* %25, align 4
  %82 = getelementptr inbounds [10 x i8], [10 x i8]* %23, i64 0, i64 0
  %83 = call i32 (i8*, i32, i8*, i32, ...) @sprintf_s(i8* %78, i32 1024, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %79, i8* %80, i32 %81, i8* %82)
  %84 = load i64, i64* %19, align 8
  %85 = trunc i64 %84 to i32
  %86 = getelementptr inbounds [1024 x i8], [1024 x i8]* %20, i64 0, i64 0
  %87 = getelementptr inbounds [1024 x i8], [1024 x i8]* %20, i64 0, i64 0
  %88 = call i64 @strlen(i8* %87)
  %89 = trunc i64 %88 to i32
  %90 = call i64 @send(i32 %85, i8* %86, i32 %89, i32 0)
  store i64 %90, i64* %26, align 8
  %91 = load i64, i64* %26, align 8
  %92 = getelementptr inbounds [1024 x i8], [1024 x i8]* %20, i64 0, i64 0
  %93 = call i64 @strlen(i8* %92)
  %94 = icmp ne i64 %91, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %72
  %96 = call i32 @LOG(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %97 = call i32 @exit(i32 1) #3
  unreachable

98:                                               ; preds = %72
  %99 = load %struct.Output*, %struct.Output** %10, align 8
  %100 = getelementptr inbounds %struct.Output, %struct.Output* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  %104 = getelementptr inbounds [64 x i8], [64 x i8]* %27, i64 0, i64 0
  %105 = load i64, i64* %12, align 8
  %106 = trunc i64 %105 to i32
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %17, align 4
  %109 = load i32, i32* %18, align 4
  %110 = call i32 (i8*, i32, i8*, i32, ...) @sprintf_s(i8* %104, i32 64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %106, i32 %107, i32 %108, i32 %109)
  store i32 %110, i32* %28, align 4
  %111 = getelementptr inbounds [1024 x i8], [1024 x i8]* %20, i64 0, i64 0
  %112 = load i32, i32* %24, align 4
  %113 = add nsw i32 %112, 1
  %114 = load i32, i32* %25, align 4
  %115 = add nsw i32 %113, %114
  %116 = getelementptr inbounds [16 x i8], [16 x i8]* %22, i64 0, i64 0
  %117 = getelementptr inbounds [10 x i8], [10 x i8]* %23, i64 0, i64 0
  %118 = load i32, i32* %28, align 4
  %119 = getelementptr inbounds [64 x i8], [64 x i8]* %27, i64 0, i64 0
  %120 = call i32 (i8*, i32, i8*, i32, ...) @sprintf_s(i8* %111, i32 1024, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %115, i8* %116, i8* %117, i32 %118, i8* %119)
  store i32 %120, i32* %21, align 4
  %121 = load i64, i64* %19, align 8
  %122 = trunc i64 %121 to i32
  %123 = getelementptr inbounds [1024 x i8], [1024 x i8]* %20, i64 0, i64 0
  %124 = load i32, i32* %21, align 4
  %125 = call i64 @send(i32 %122, i8* %123, i32 %124, i32 0)
  store i64 %125, i64* %26, align 8
  %126 = load i64, i64* %26, align 8
  %127 = load i32, i32* %21, align 4
  %128 = sext i32 %127 to i64
  %129 = icmp ne i64 %126, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %98
  %131 = call i32 @LOG(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %132 = call i32 @exit(i32 1) #3
  unreachable

133:                                              ; preds = %98
  %134 = load %struct.Output*, %struct.Output** %10, align 8
  %135 = getelementptr inbounds %struct.Output, %struct.Output* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 4
  %139 = load %struct.Output*, %struct.Output** %10, align 8
  %140 = load i64, i64* %19, align 8
  %141 = trunc i64 %140 to i32
  %142 = call i32 @clean_response_queue(%struct.Output* %139, i32 %141)
  ret void
}

declare dso_local i32 @sprintf_s(i8*, i32, i8*, i32, ...) #1

declare dso_local i8* @name_from_ip_proto(i32) #1

declare dso_local i64 @send(i32, i8*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @LOG(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @clean_response_queue(%struct.Output*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
