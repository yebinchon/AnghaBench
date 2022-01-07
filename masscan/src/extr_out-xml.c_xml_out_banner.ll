; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_out-xml.c_xml_out_banner.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_out-xml.c_xml_out_banner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Output = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"syn-ack\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.2 = private unnamed_addr constant [219 x i8] c"<host endtime=\22%u\22><address addr=\22%u.%u.%u.%u\22 addrtype=\22ipv4\22/><ports><port protocol=\22%s\22 portid=\22%u\22><state state=\22open\22 reason=\22%s\22 reason_ttl=\22%u\22 /><service name=\22%s\22 banner=\22%s\22></service></port></ports></host>\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Output*, i32*, i64, i32, i32, i32, i32, i32, i8*, i32)* @xml_out_banner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xml_out_banner(%struct.Output* %0, i32* %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i8* %8, i32 %9) #0 {
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
  %21 = alloca [4096 x i8], align 16
  %22 = alloca i8*, align 8
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
  %23 = load i32, i32* %17, align 4
  switch i32 %23, label %25 [
    i32 6, label %24
  ]

24:                                               ; preds = %10
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  br label %26

25:                                               ; preds = %10
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %22, align 8
  br label %26

26:                                               ; preds = %25, %24
  %27 = load %struct.Output*, %struct.Output** %11, align 8
  %28 = call i32 @UNUSEDPARM(%struct.Output* %27)
  %29 = load i32*, i32** %12, align 8
  %30 = load i64, i64* %13, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* %14, align 4
  %33 = lshr i32 %32, 24
  %34 = and i32 %33, 255
  %35 = load i32, i32* %14, align 4
  %36 = lshr i32 %35, 16
  %37 = and i32 %36, 255
  %38 = load i32, i32* %14, align 4
  %39 = lshr i32 %38, 8
  %40 = and i32 %39, 255
  %41 = load i32, i32* %14, align 4
  %42 = lshr i32 %41, 0
  %43 = and i32 %42, 255
  %44 = load i32, i32* %15, align 4
  %45 = call i8* @name_from_ip_proto(i32 %44)
  %46 = load i32, i32* %16, align 4
  %47 = load i8*, i8** %22, align 8
  %48 = load i32, i32* %18, align 4
  %49 = load i32, i32* %17, align 4
  %50 = call i8* @masscan_app_to_string(i32 %49)
  %51 = load i8*, i8** %19, align 8
  %52 = load i32, i32* %20, align 4
  %53 = getelementptr inbounds [4096 x i8], [4096 x i8]* %21, i64 0, i64 0
  %54 = call i8* @normalize_string(i8* %51, i32 %52, i8* %53, i32 4096)
  %55 = call i32 @fprintf(i32* %29, i8* getelementptr inbounds ([219 x i8], [219 x i8]* @.str.2, i64 0, i64 0), i32 %31, i32 %34, i32 %37, i32 %40, i32 %43, i8* %45, i32 %46, i8* %47, i32 %48, i8* %50, i8* %54)
  ret void
}

declare dso_local i32 @UNUSEDPARM(%struct.Output*) #1

declare dso_local i32 @fprintf(i32*, i8*, i32, i32, i32, i32, i32, i8*, i32, i8*, i32, i8*, i8*) #1

declare dso_local i8* @name_from_ip_proto(i32) #1

declare dso_local i8* @masscan_app_to_string(i32) #1

declare dso_local i8* @normalize_string(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
