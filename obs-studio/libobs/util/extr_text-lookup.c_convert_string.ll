; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_text-lookup.c_convert_string.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_text-lookup.c_convert_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i8*, i64, i64 }

@.str = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64)* @convert_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @convert_string(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dstr, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i8* @bstrdup_n(i8* %6, i64 %7)
  %9 = getelementptr inbounds %struct.dstr, %struct.dstr* %5, i32 0, i32 0
  store i8* %8, i8** %9, align 8
  %10 = load i64, i64* %4, align 8
  %11 = add i64 %10, 1
  %12 = getelementptr inbounds %struct.dstr, %struct.dstr* %5, i32 0, i32 1
  store i64 %11, i64* %12, align 8
  %13 = load i64, i64* %4, align 8
  %14 = getelementptr inbounds %struct.dstr, %struct.dstr* %5, i32 0, i32 2
  store i64 %13, i64* %14, align 8
  %15 = call i32 @dstr_replace(%struct.dstr* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i32 @dstr_replace(%struct.dstr* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %17 = call i32 @dstr_replace(%struct.dstr* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %18 = call i32 @dstr_replace(%struct.dstr* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %19 = getelementptr inbounds %struct.dstr, %struct.dstr* %5, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  ret i8* %20
}

declare dso_local i8* @bstrdup_n(i8*, i64) #1

declare dso_local i32 @dstr_replace(%struct.dstr*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
