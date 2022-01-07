; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_check_cmd_access.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_check_cmd_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv = type { i64* }

@CHKACC_FILE = common dso_local global i32 0, align 4
@X_OK = common dso_local global i32 0, align 4
@M_NOPREFIX = common dso_local global i32 0, align 4
@M_OPTERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"%s fails with '%s': No path to executable.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @check_cmd_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_cmd_access(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.argv, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.argv, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %46

14:                                               ; preds = %3
  %15 = call i64* (...) @argv_new()
  %16 = getelementptr inbounds %struct.argv, %struct.argv* %10, i32 0, i32 0
  store i64* %15, i64** %16, align 8
  %17 = bitcast %struct.argv* %8 to i8*
  %18 = bitcast %struct.argv* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 8, i1 false)
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @argv_parse_cmd(%struct.argv* %8, i8* %19)
  %21 = getelementptr inbounds %struct.argv, %struct.argv* %8, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %14
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* @CHKACC_FILE, align 4
  %29 = getelementptr inbounds %struct.argv, %struct.argv* %8, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @X_OK, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @check_file_access_chroot(i8* %27, i32 %28, i64 %32, i32 %33, i8* %34)
  store i32 %35, i32* %9, align 4
  br label %43

36:                                               ; preds = %14
  %37 = load i32, i32* @M_NOPREFIX, align 4
  %38 = load i32, i32* @M_OPTERR, align 4
  %39 = or i32 %37, %38
  %40 = load i8*, i8** %6, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @msg(i32 %39, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %40, i8* %41)
  store i32 1, i32* %9, align 4
  br label %43

43:                                               ; preds = %36, %26
  %44 = call i32 @argv_reset(%struct.argv* %8)
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %43, %13
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i64* @argv_new(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @argv_parse_cmd(%struct.argv*, i8*) #1

declare dso_local i32 @check_file_access_chroot(i8*, i32, i64, i32, i8*) #1

declare dso_local i32 @msg(i32, i8*, i8*, i8*) #1

declare dso_local i32 @argv_reset(%struct.argv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
