; ModuleID = '/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_xml_to_soap.c_parse_array_type_info.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_xml_to_soap.c_parse_array_type_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.array_info = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.array_info* (i8*)* @parse_array_type_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.array_info* @parse_array_type_info(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.array_info*, align 8
  %4 = alloca [128 x i8], align 16
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store %struct.array_info* null, %struct.array_info** %3, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %30

8:                                                ; preds = %1
  %9 = call i64 @ecalloc(i32 1, i32 4)
  %10 = inttoptr i64 %9 to %struct.array_info*
  store %struct.array_info* %10, %struct.array_info** %3, align 8
  %11 = load %struct.array_info*, %struct.array_info** %3, align 8
  %12 = icmp ne %struct.array_info* %11, null
  br i1 %12, label %13, label %29

13:                                               ; preds = %8
  %14 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @snprintf(i8* %14, i32 128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %18 = call i8* @strchr(i8* %17, i8 signext 91)
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i8*, i8** %5, align 8
  store i8 0, i8* %22, align 1
  br label %23

23:                                               ; preds = %21, %13
  %24 = load %struct.array_info*, %struct.array_info** %3, align 8
  %25 = getelementptr inbounds %struct.array_info, %struct.array_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %28 = call i32 @strcpy(i32 %26, i8* %27)
  br label %29

29:                                               ; preds = %23, %8
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.array_info*, %struct.array_info** %3, align 8
  ret %struct.array_info* %31
}

declare dso_local i64 @ecalloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
