; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_options_warning_safe_scan2.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_options_warning_safe_scan2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32 }
%struct.gc_arena = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"key-method \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"keydir \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"proto \00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"tls-auth \00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"tun-ipv6\00", align 1
@OPTION_PARM_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [55 x i8] c"WARNING: '%s' is used inconsistently, %s='%s', %s='%s'\00", align 1
@.str.6 = private unnamed_addr constant [72 x i8] c"WARNING: '%s' is present in %s config but missing in %s config, %s='%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i8*, %struct.buffer*, i8*, i8*)* @options_warning_safe_scan2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @options_warning_safe_scan2(i32 %0, i32 %1, i32 %2, i8* %3, %struct.buffer* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.buffer*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.gc_arena, align 4
  %16 = alloca %struct.buffer, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store %struct.buffer* %4, %struct.buffer** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = call i64 @strprefix(i8* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %7
  %24 = load i8*, i8** %11, align 8
  %25 = call i64 @strprefix(i8* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %11, align 8
  %29 = call i64 @strprefix(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = load i8*, i8** %11, align 8
  %33 = call i64 @strprefix(i8* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i8*, i8** %11, align 8
  %37 = call i64 @strprefix(i8* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %31, %27, %23, %7
  br label %106

40:                                               ; preds = %35
  %41 = load i8*, i8** %11, align 8
  %42 = call i64 @strlen(i8* %41)
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %106

44:                                               ; preds = %40
  %45 = call i32 (...) @gc_new()
  %46 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %15, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  %47 = load %struct.buffer*, %struct.buffer** %12, align 8
  %48 = bitcast %struct.buffer* %16 to i8*
  %49 = bitcast %struct.buffer* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 %49, i64 4, i1 false)
  %50 = load i8*, i8** %11, align 8
  %51 = call i8* @options_warning_extract_parm1(i8* %50, %struct.gc_arena* %15)
  store i8* %51, i8** %17, align 8
  %52 = load i32, i32* @OPTION_PARM_SIZE, align 4
  %53 = call i8* @gc_malloc(i32 %52, i32 0, %struct.gc_arena* %15)
  store i8* %53, i8** %18, align 8
  br label %54

54:                                               ; preds = %93, %44
  %55 = load i32, i32* %9, align 4
  %56 = load i8*, i8** %18, align 8
  %57 = load i32, i32* @OPTION_PARM_SIZE, align 4
  %58 = call i64 @buf_parse(%struct.buffer* %16, i32 %55, i8* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %94

60:                                               ; preds = %54
  %61 = load i8*, i8** %18, align 8
  %62 = call i64 @strlen(i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %93

64:                                               ; preds = %60
  %65 = load i8*, i8** %18, align 8
  %66 = call i8* @options_warning_extract_parm1(i8* %65, %struct.gc_arena* %15)
  store i8* %66, i8** %19, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = load i8*, i8** %18, align 8
  %69 = call i32 @strcmp(i8* %67, i8* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %64
  br label %104

72:                                               ; preds = %64
  %73 = load i8*, i8** %17, align 8
  %74 = load i8*, i8** %19, align 8
  %75 = call i32 @strcmp(i8* %73, i8* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %92, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %77
  %81 = load i32, i32* %8, align 4
  %82 = load i8*, i8** %17, align 8
  %83 = call i8* @safe_print(i8* %82, %struct.gc_arena* %15)
  %84 = load i8*, i8** %13, align 8
  %85 = load i8*, i8** %11, align 8
  %86 = call i8* @safe_print(i8* %85, %struct.gc_arena* %15)
  %87 = load i8*, i8** %14, align 8
  %88 = load i8*, i8** %18, align 8
  %89 = call i8* @safe_print(i8* %88, %struct.gc_arena* %15)
  %90 = call i32 @msg(i32 %81, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i8* %83, i8* %84, i8* %86, i8* %87, i8* %89)
  br label %91

91:                                               ; preds = %80, %77
  br label %104

92:                                               ; preds = %72
  br label %93

93:                                               ; preds = %92, %60
  br label %54

94:                                               ; preds = %54
  %95 = load i32, i32* %8, align 4
  %96 = load i8*, i8** %17, align 8
  %97 = call i8* @safe_print(i8* %96, %struct.gc_arena* %15)
  %98 = load i8*, i8** %13, align 8
  %99 = load i8*, i8** %14, align 8
  %100 = load i8*, i8** %13, align 8
  %101 = load i8*, i8** %11, align 8
  %102 = call i8* @safe_print(i8* %101, %struct.gc_arena* %15)
  %103 = call i32 @msg(i32 %95, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.6, i64 0, i64 0), i8* %97, i8* %98, i8* %99, i8* %100, i8* %102)
  br label %104

104:                                              ; preds = %94, %91, %71
  %105 = call i32 @gc_free(%struct.gc_arena* %15)
  br label %106

106:                                              ; preds = %39, %104, %40
  ret void
}

declare dso_local i64 @strprefix(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @gc_new(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @options_warning_extract_parm1(i8*, %struct.gc_arena*) #1

declare dso_local i8* @gc_malloc(i32, i32, %struct.gc_arena*) #1

declare dso_local i64 @buf_parse(%struct.buffer*, i32, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @msg(i32, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i8* @safe_print(i8*, %struct.gc_arena*) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
