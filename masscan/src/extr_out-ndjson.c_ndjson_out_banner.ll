; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_out-ndjson.c_ndjson_out_banner.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_out-ndjson.c_ndjson_out_banner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Output = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"\22ip\22:\22%u.%u.%u.%u\22,\00", align 1
@.str.2 = private unnamed_addr constant [103 x i8] c"\22timestamp\22:\22%d\22,\22port\22:%u,\22proto\22:\22%s\22,\22rec_type\22:\22banner\22,\22data\22:{\22service_name\22:\22%s\22,\22banner\22:\22%s\22}\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Output*, i32*, i64, i32, i32, i32, i32, i32, i8*, i32)* @ndjson_out_banner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ndjson_out_banner(%struct.Output* %0, i32* %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i8* %8, i32 %9) #0 {
  %11 = alloca %struct.Output*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca [65536 x i8], align 16
  store %struct.Output* %0, %struct.Output** %11, align 8
  store i32* %1, i32** %12, align 8
  store i64 %2, i64* %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i8* %8, i8** %19, align 8
  store i32 %9, i32* %20, align 4
  %22 = load i32, i32* %18, align 4
  %23 = call i32 @UNUSEDPARM(i32 %22)
  %24 = load i32*, i32** %12, align 8
  %25 = call i32 (i32*, i8*, ...) @fprintf(i32* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %26 = load i32*, i32** %12, align 8
  %27 = load i32, i32* %14, align 4
  %28 = lshr i32 %27, 24
  %29 = and i32 %28, 255
  %30 = load i32, i32* %14, align 4
  %31 = lshr i32 %30, 16
  %32 = and i32 %31, 255
  %33 = load i32, i32* %14, align 4
  %34 = lshr i32 %33, 8
  %35 = and i32 %34, 255
  %36 = load i32, i32* %14, align 4
  %37 = lshr i32 %36, 0
  %38 = and i32 %37, 255
  %39 = call i32 (i32*, i8*, ...) @fprintf(i32* %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %32, i32 %35, i32 %38)
  %40 = load i32*, i32** %12, align 8
  %41 = load i64, i64* %13, align 8
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %15, align 4
  %45 = call i8* @name_from_ip_proto(i32 %44)
  %46 = load i32, i32* %17, align 4
  %47 = call i8* @masscan_app_to_string(i32 %46)
  %48 = load i8*, i8** %19, align 8
  %49 = load i32, i32* %20, align 4
  %50 = getelementptr inbounds [65536 x i8], [65536 x i8]* %21, i64 0, i64 0
  %51 = call i8* @normalize_ndjson_string(i8* %48, i32 %49, i8* %50, i32 65536)
  %52 = call i32 (i32*, i8*, ...) @fprintf(i32* %40, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.2, i64 0, i64 0), i32 %42, i32 %43, i8* %45, i8* %47, i8* %51)
  %53 = load i32*, i32** %12, align 8
  %54 = call i32 (i32*, i8*, ...) @fprintf(i32* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %55 = load %struct.Output*, %struct.Output** %11, align 8
  %56 = ptrtoint %struct.Output* %55 to i32
  %57 = call i32 @UNUSEDPARM(i32 %56)
  ret void
}

declare dso_local i32 @UNUSEDPARM(i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @name_from_ip_proto(i32) #1

declare dso_local i8* @masscan_app_to_string(i32) #1

declare dso_local i8* @normalize_ndjson_string(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
