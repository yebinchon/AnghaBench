; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_options_warning_safe_scan1.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_options_warning_safe_scan1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32 }
%struct.gc_arena = type { i32 }

@OPTION_PARM_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, %struct.buffer*, %struct.buffer*, i8*, i8*)* @options_warning_safe_scan1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @options_warning_safe_scan1(i32 %0, i32 %1, i32 %2, %struct.buffer* %3, %struct.buffer* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.buffer*, align 8
  %12 = alloca %struct.buffer*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.gc_arena, align 4
  %16 = alloca %struct.buffer, align 4
  %17 = alloca i8*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.buffer* %3, %struct.buffer** %11, align 8
  store %struct.buffer* %4, %struct.buffer** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %18 = call i32 (...) @gc_new()
  %19 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %15, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load %struct.buffer*, %struct.buffer** %11, align 8
  %21 = bitcast %struct.buffer* %16 to i8*
  %22 = bitcast %struct.buffer* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  %23 = load i32, i32* @OPTION_PARM_SIZE, align 4
  %24 = call i8* @gc_malloc(i32 %23, i32 1, %struct.gc_arena* %15)
  store i8* %24, i8** %17, align 8
  br label %25

25:                                               ; preds = %31, %7
  %26 = load i32, i32* %9, align 4
  %27 = load i8*, i8** %17, align 8
  %28 = load i32, i32* @OPTION_PARM_SIZE, align 4
  %29 = call i64 @buf_parse(%struct.buffer* %16, i32 %26, i8* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i8*, i8** %17, align 8
  %36 = load %struct.buffer*, %struct.buffer** %12, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = load i8*, i8** %14, align 8
  %39 = call i32 @options_warning_safe_scan2(i32 %32, i32 %33, i32 %34, i8* %35, %struct.buffer* %36, i8* %37, i8* %38)
  br label %25

40:                                               ; preds = %25
  %41 = call i32 @gc_free(%struct.gc_arena* %15)
  ret void
}

declare dso_local i32 @gc_new(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @gc_malloc(i32, i32, %struct.gc_arena*) #1

declare dso_local i64 @buf_parse(%struct.buffer*, i32, i8*, i32) #1

declare dso_local i32 @options_warning_safe_scan2(i32, i32, i32, i8*, %struct.buffer*, i8*, i8*) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
