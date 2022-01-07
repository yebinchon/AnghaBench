; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_scripting-banner.c_register_script_for_ports.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_scripting-banner.c_register_script_for_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Banner1 = type { i32 }
%struct.RangeList = type { i32, %struct.Range*, i32 }
%struct.Range = type { i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"SCRIPTING: invalid 'setTcpPorts' range: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Banner1*, i8*)* @register_script_for_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @register_script_for_ports(%struct.Banner1* %0, i8* %1) #0 {
  %3 = alloca %struct.Banner1*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.RangeList, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.Range*, align 8
  %9 = alloca i32, align 4
  store %struct.Banner1* %0, %struct.Banner1** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = bitcast %struct.RangeList* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 24, i1 false)
  store i32 0, i32* %6, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @rangelist_parse_ports(%struct.RangeList* %5, i8* %11, i32* %6, i32 0)
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @LOG(i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = call i32 @exit(i32 1) #4
  unreachable

19:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %48, %19
  %21 = load i32, i32* %7, align 4
  %22 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %5, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ult i32 %21, %23
  br i1 %24, label %25, label %51

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %5, i32 0, i32 1
  %27 = load %struct.Range*, %struct.Range** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.Range, %struct.Range* %27, i64 %29
  store %struct.Range* %30, %struct.Range** %8, align 8
  %31 = load %struct.Range*, %struct.Range** %8, align 8
  %32 = getelementptr inbounds %struct.Range, %struct.Range* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %44, %25
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.Range*, %struct.Range** %8, align 8
  %37 = getelementptr inbounds %struct.Range, %struct.Range* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ule i32 %35, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load %struct.Banner1*, %struct.Banner1** %3, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @register_script_for_port(%struct.Banner1* %41, i32 %42)
  br label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %9, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %34

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %7, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %20

51:                                               ; preds = %20
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @rangelist_parse_ports(%struct.RangeList*, i8*, i32*, i32) #2

declare dso_local i32 @LOG(i32, i8*, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @register_script_for_port(%struct.Banner1*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
