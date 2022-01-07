; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_protectdata.c_valid_protect_data.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_protectdata.c_valid_protect_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protect_data_t = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"called\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"count0 != 0x0001 !\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"null0 != 0x0000 !\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"null1 != 0x0000 !\0A\00", align 1
@crypt_magic_str = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"info0 magic value not matched !\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"unrecognized CryptProtectData block\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.protect_data_t*)* @valid_protect_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valid_protect_data(%struct.protect_data_t* %0) #0 {
  %2 = alloca %struct.protect_data_t*, align 8
  %3 = alloca i32, align 4
  store %struct.protect_data_t* %0, %struct.protect_data_t** %2, align 8
  %4 = load i32, i32* @TRUE, align 4
  store i32 %4, i32* %3, align 4
  %5 = call i32 @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.protect_data_t*, %struct.protect_data_t** %2, align 8
  %7 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 1
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = call i32 @ERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %3, align 4
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.protect_data_t*, %struct.protect_data_t** %2, align 8
  %15 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = call i32 @ERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %18, %13
  %22 = load %struct.protect_data_t*, %struct.protect_data_t** %2, align 8
  %23 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = call i32 @ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %26, %21
  %30 = load %struct.protect_data_t*, %struct.protect_data_t** %2, align 8
  %31 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = call i32 @ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %34, %29
  %38 = load %struct.protect_data_t*, %struct.protect_data_t** %2, align 8
  %39 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @crypt_magic_str, align 4
  %43 = call i64 @strlen(i32 %42)
  %44 = add nsw i64 %43, 1
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %55, label %46

46:                                               ; preds = %37
  %47 = load %struct.protect_data_t*, %struct.protect_data_t** %2, align 8
  %48 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* @crypt_magic_str, align 4
  %53 = call i64 @strcmp(i32 %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %46, %37
  %56 = call i32 @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %57 = load i32, i32* @FALSE, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %55, %46
  %59 = load i32, i32* %3, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = call i32 @ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %58
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
