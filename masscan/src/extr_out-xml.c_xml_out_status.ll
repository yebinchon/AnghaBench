; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_out-xml.c_xml_out_status.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_out-xml.c_xml_out_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Output = type { i32 }

@.str = private unnamed_addr constant [175 x i8] c"<host endtime=\22%u\22><address addr=\22%u.%u.%u.%u\22 addrtype=\22ipv4\22/><ports><port protocol=\22%s\22 portid=\22%u\22><state state=\22%s\22 reason=\22%s\22 reason_ttl=\22%u\22/></port></ports></host>\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Output*, i32*, i64, i32, i32, i32, i32, i32, i32)* @xml_out_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xml_out_status(%struct.Output* %0, i32* %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
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
  %22 = load i32*, i32** %11, align 8
  %23 = load i64, i64* %12, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* %14, align 4
  %26 = lshr i32 %25, 24
  %27 = and i32 %26, 255
  %28 = load i32, i32* %14, align 4
  %29 = lshr i32 %28, 16
  %30 = and i32 %29, 255
  %31 = load i32, i32* %14, align 4
  %32 = lshr i32 %31, 8
  %33 = and i32 %32, 255
  %34 = load i32, i32* %14, align 4
  %35 = lshr i32 %34, 0
  %36 = and i32 %35, 255
  %37 = load i32, i32* %15, align 4
  %38 = call i8* @name_from_ip_proto(i32 %37)
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* %13, align 4
  %41 = call i8* @status_string(i32 %40)
  %42 = load i32, i32* %17, align 4
  %43 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %44 = call i8* @reason_string(i32 %42, i8* %43, i32 128)
  %45 = load i32, i32* %18, align 4
  %46 = call i32 @fprintf(i32* %22, i8* getelementptr inbounds ([175 x i8], [175 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27, i32 %30, i32 %33, i32 %36, i8* %38, i32 %39, i8* %41, i8* %44, i32 %45)
  ret void
}

declare dso_local i32 @UNUSEDPARM(%struct.Output*) #1

declare dso_local i32 @fprintf(i32*, i8*, i32, i32, i32, i32, i32, i8*, i32, i8*, i8*, i32) #1

declare dso_local i8* @name_from_ip_proto(i32) #1

declare dso_local i8* @status_string(i32) #1

declare dso_local i8* @reason_string(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
