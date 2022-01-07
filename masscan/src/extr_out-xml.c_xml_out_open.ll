; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_out-xml.c_xml_out_open.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_out-xml.c_xml_out_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Output = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [24 x i8] c"<?xml version=\221.0\22?>\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"<!-- masscan v1.0 scan -->\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"<?xml-stylesheet href=\22%s\22 type=\22text/xsl\22?>\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [72 x i8] c"<nmaprun scanner=\22%s\22 start=\22%u\22 version=\22%s\22  xmloutputversion=\22%s\22>\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"masscan\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"1.0-BETA\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"1.03\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"<scaninfo type=\22%s\22 protocol=\22%s\22 />\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"syn\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Output*, i32*)* @xml_out_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xml_out_open(%struct.Output* %0, i32* %1) #0 {
  %3 = alloca %struct.Output*, align 8
  %4 = alloca i32*, align 8
  store %struct.Output* %0, %struct.Output** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = call i32 (i32*, i8*, ...) @fprintf(i32* %5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 (i32*, i8*, ...) @fprintf(i32* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %9 = load %struct.Output*, %struct.Output** %3, align 8
  %10 = getelementptr inbounds %struct.Output, %struct.Output* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %2
  %15 = load %struct.Output*, %struct.Output** %3, align 8
  %16 = getelementptr inbounds %struct.Output, %struct.Output* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %14
  %24 = load i32*, i32** %4, align 8
  %25 = load %struct.Output*, %struct.Output** %3, align 8
  %26 = getelementptr inbounds %struct.Output, %struct.Output* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (i32*, i8*, ...) @fprintf(i32* %24, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %23, %14, %2
  %31 = load i32*, i32** %4, align 8
  %32 = call i64 @time(i32 0)
  %33 = trunc i64 %32 to i32
  %34 = call i32 (i32*, i8*, ...) @fprintf(i32* %31, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 (i32*, i8*, ...) @fprintf(i32* %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @time(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
