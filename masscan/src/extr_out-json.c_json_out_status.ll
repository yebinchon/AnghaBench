; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_out-json.c_json_out_status.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_out-json.c_json_out_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Output = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"{ \00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"  \22ip\22: \22%u.%u.%u.%u\22, \00", align 1
@.str.3 = private unnamed_addr constant [106 x i8] c"  \22timestamp\22: \22%d\22, \22ports\22: [ {\22port\22: %u, \22proto\22: \22%s\22, \22status\22: \22%s\22, \22reason\22: \22%s\22, \22ttl\22: %u} ] \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Output*, i32*, i64, i32, i32, i32, i32, i32, i32)* @json_out_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @json_out_status(%struct.Output* %0, i32* %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.Output*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [128 x i8], align 16
  store %struct.Output* %0, %struct.Output** %10, align 8
  store i32* %1, i32** %11, align 8
  store i64 %2, i64* %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %20 = load %struct.Output*, %struct.Output** %10, align 8
  %21 = call i32 @UNUSEDPARM(%struct.Output* %20)
  %22 = load %struct.Output*, %struct.Output** %10, align 8
  %23 = getelementptr inbounds %struct.Output, %struct.Output* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %9
  %27 = load i32*, i32** %11, align 8
  %28 = call i32 (i32*, i8*, ...) @fprintf(i32* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %32

29:                                               ; preds = %9
  %30 = load %struct.Output*, %struct.Output** %10, align 8
  %31 = getelementptr inbounds %struct.Output, %struct.Output* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32*, i32** %11, align 8
  %34 = call i32 (i32*, i8*, ...) @fprintf(i32* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* %14, align 4
  %37 = lshr i32 %36, 24
  %38 = and i32 %37, 255
  %39 = load i32, i32* %14, align 4
  %40 = lshr i32 %39, 16
  %41 = and i32 %40, 255
  %42 = load i32, i32* %14, align 4
  %43 = lshr i32 %42, 8
  %44 = and i32 %43, 255
  %45 = load i32, i32* %14, align 4
  %46 = lshr i32 %45, 0
  %47 = and i32 %46, 255
  %48 = call i32 (i32*, i8*, ...) @fprintf(i32* %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %38, i32 %41, i32 %44, i32 %47)
  %49 = load i32*, i32** %11, align 8
  %50 = load i64, i64* %12, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* %15, align 4
  %54 = call i8* @name_from_ip_proto(i32 %53)
  %55 = load i32, i32* %13, align 4
  %56 = call i8* @status_string(i32 %55)
  %57 = load i32, i32* %17, align 4
  %58 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %59 = call i8* @reason_string(i32 %57, i8* %58, i32 128)
  %60 = load i32, i32* %18, align 4
  %61 = call i32 (i32*, i8*, ...) @fprintf(i32* %49, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.3, i64 0, i64 0), i32 %51, i32 %52, i8* %54, i8* %56, i8* %59, i32 %60)
  %62 = load i32*, i32** %11, align 8
  %63 = call i32 (i32*, i8*, ...) @fprintf(i32* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @UNUSEDPARM(%struct.Output*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @name_from_ip_proto(i32) #1

declare dso_local i8* @status_string(i32) #1

declare dso_local i8* @reason_string(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
