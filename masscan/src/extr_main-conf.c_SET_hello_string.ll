; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_main-conf.c_SET_hello_string.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_main-conf.c_SET_hello_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Masscan = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { %struct.TcpCfgPayloads* }
%struct.TcpCfgPayloads = type { i32, i8*, %struct.TcpCfgPayloads* }

@.str = private unnamed_addr constant [23 x i8] c"hello-string[%u] = %s\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"%s: bad index\0A\00", align 1
@CONF_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Masscan*, i8*, i8*)* @SET_hello_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SET_hello_string(%struct.Masscan* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Masscan*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TcpCfgPayloads*, align 8
  store %struct.Masscan* %0, %struct.Masscan** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %12 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %3
  %16 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %17 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.TcpCfgPayloads*, %struct.TcpCfgPayloads** %18, align 8
  store %struct.TcpCfgPayloads* %19, %struct.TcpCfgPayloads** %10, align 8
  br label %20

20:                                               ; preds = %35, %15
  %21 = load %struct.TcpCfgPayloads*, %struct.TcpCfgPayloads** %10, align 8
  %22 = icmp ne %struct.TcpCfgPayloads* %21, null
  br i1 %22, label %23, label %39

23:                                               ; preds = %20
  %24 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %25 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = load %struct.TcpCfgPayloads*, %struct.TcpCfgPayloads** %10, align 8
  %29 = getelementptr inbounds %struct.TcpCfgPayloads, %struct.TcpCfgPayloads* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TcpCfgPayloads*, %struct.TcpCfgPayloads** %10, align 8
  %32 = getelementptr inbounds %struct.TcpCfgPayloads, %struct.TcpCfgPayloads* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %30, i8* %33)
  br label %35

35:                                               ; preds = %23
  %36 = load %struct.TcpCfgPayloads*, %struct.TcpCfgPayloads** %10, align 8
  %37 = getelementptr inbounds %struct.TcpCfgPayloads, %struct.TcpCfgPayloads* %36, i32 0, i32 2
  %38 = load %struct.TcpCfgPayloads*, %struct.TcpCfgPayloads** %37, align 8
  store %struct.TcpCfgPayloads* %38, %struct.TcpCfgPayloads** %10, align 8
  br label %20

39:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %71

40:                                               ; preds = %3
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @ARRAY(i8* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp uge i32 %43, 65536
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i32, i32* @stderr, align 4
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  %49 = call i32 @exit(i32 1) #3
  unreachable

50:                                               ; preds = %40
  %51 = load i8*, i8** %7, align 8
  %52 = call i8* @STRDUP(i8* %51)
  store i8* %52, i8** %9, align 8
  %53 = call %struct.TcpCfgPayloads* @MALLOC(i32 24)
  store %struct.TcpCfgPayloads* %53, %struct.TcpCfgPayloads** %10, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load %struct.TcpCfgPayloads*, %struct.TcpCfgPayloads** %10, align 8
  %56 = getelementptr inbounds %struct.TcpCfgPayloads, %struct.TcpCfgPayloads* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.TcpCfgPayloads*, %struct.TcpCfgPayloads** %10, align 8
  %59 = getelementptr inbounds %struct.TcpCfgPayloads, %struct.TcpCfgPayloads* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %61 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load %struct.TcpCfgPayloads*, %struct.TcpCfgPayloads** %62, align 8
  %64 = load %struct.TcpCfgPayloads*, %struct.TcpCfgPayloads** %10, align 8
  %65 = getelementptr inbounds %struct.TcpCfgPayloads, %struct.TcpCfgPayloads* %64, i32 0, i32 2
  store %struct.TcpCfgPayloads* %63, %struct.TcpCfgPayloads** %65, align 8
  %66 = load %struct.TcpCfgPayloads*, %struct.TcpCfgPayloads** %10, align 8
  %67 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %68 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store %struct.TcpCfgPayloads* %66, %struct.TcpCfgPayloads** %69, align 8
  %70 = load i32, i32* @CONF_OK, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %50, %39
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @ARRAY(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @STRDUP(i8*) #1

declare dso_local %struct.TcpCfgPayloads* @MALLOC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
