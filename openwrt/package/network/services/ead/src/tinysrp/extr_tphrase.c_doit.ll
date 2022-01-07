; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/services/ead/src/tinysrp/extr_tphrase.c_doit.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/services/ead/src/tinysrp/extr_tphrase.c_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_confent = type { i32 }
%struct.t_pw = type { i32 }

@Configindex = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Invalid configuration file entry.\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Setting passphrase for %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Enter passphrase: \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Verify: \00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"mismatch\0A\00", align 1
@Passfile = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Error changing passphrase\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @doit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [128 x i8], align 16
  %4 = alloca [128 x i8], align 16
  %5 = alloca i32*, align 8
  %6 = alloca %struct.t_confent*, align 8
  %7 = alloca %struct.t_pw, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i64, i64* @Configindex, align 8
  %9 = icmp sle i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i64 (...) @t_getprecount()
  store i64 %11, i64* @Configindex, align 8
  br label %12

12:                                               ; preds = %10, %1
  %13 = load i64, i64* @Configindex, align 8
  %14 = call %struct.t_confent* @gettcid(i64 %13)
  store %struct.t_confent* %14, %struct.t_confent** %6, align 8
  %15 = load %struct.t_confent*, %struct.t_confent** %6, align 8
  %16 = icmp eq %struct.t_confent* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @exit(i32 1) #3
  unreachable

21:                                               ; preds = %12
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  %24 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %25 = call i64 @t_getpass(i8* %24, i32 128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = call i32 @exit(i32 1) #3
  unreachable

29:                                               ; preds = %21
  %30 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %31 = call i64 @t_getpass(i8* %30, i32 128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call i32 @exit(i32 1) #3
  unreachable

35:                                               ; preds = %29
  %36 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %37 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %38 = call i64 @strcmp(i8* %36, i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @stderr, align 4
  %42 = call i32 @fprintf(i32 %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %43 = call i32 @exit(i32 1) #3
  unreachable

44:                                               ; preds = %35
  %45 = load i8*, i8** %2, align 8
  %46 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %47 = load %struct.t_confent*, %struct.t_confent** %6, align 8
  %48 = call i32 @t_makepwent(%struct.t_pw* %7, i8* %45, i8* %46, i32* null, %struct.t_confent* %47)
  %49 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %50 = call i32 @memset(i8* %49, i32 0, i32 128)
  %51 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %52 = call i32 @memset(i8* %51, i32 0, i32 128)
  %53 = load i32, i32* @Passfile, align 4
  %54 = call i32* @fopen(i32 %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32* %54, i32** %5, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %44
  %57 = load i32, i32* @Passfile, align 4
  %58 = call i32 @creat(i32 %57, i32 256)
  br label %62

59:                                               ; preds = %44
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @fclose(i32* %60)
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i32, i32* @Passfile, align 4
  %64 = getelementptr inbounds %struct.t_pw, %struct.t_pw* %7, i32 0, i32 0
  %65 = call i64 @t_changepw(i32 %63, i32* %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i32, i32* @stderr, align 4
  %69 = call i32 @fprintf(i32 %68, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %70 = call i32 @exit(i32 1) #3
  unreachable

71:                                               ; preds = %62
  ret void
}

declare dso_local i64 @t_getprecount(...) #1

declare dso_local %struct.t_confent* @gettcid(i64) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @t_getpass(i8*, i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @t_makepwent(%struct.t_pw*, i8*, i8*, i32*, %struct.t_confent*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @creat(i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @t_changepw(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
