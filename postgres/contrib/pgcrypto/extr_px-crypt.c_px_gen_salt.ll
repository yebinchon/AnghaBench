; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_px-crypt.c_px_gen_salt.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_px-crypt.c_px_gen_salt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.generator = type { i32, i32, i32, i8* (i32, i8*, i32, i8*, i32)*, i32, i32* }

@gen_list = common dso_local global %struct.generator* null, align 8
@PXE_UNKNOWN_SALT_ALGO = common dso_local global i32 0, align 4
@PXE_BAD_SALT_ROUNDS = common dso_local global i32 0, align 4
@PXE_NO_RANDOM = common dso_local global i32 0, align 4
@PX_MAX_SALT_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @px_gen_salt(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.generator*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [16 x i8], align 16
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.generator*, %struct.generator** @gen_list, align 8
  store %struct.generator* %11, %struct.generator** %8, align 8
  br label %12

12:                                               ; preds = %26, %3
  %13 = load %struct.generator*, %struct.generator** %8, align 8
  %14 = getelementptr inbounds %struct.generator, %struct.generator* %13, i32 0, i32 5
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = load %struct.generator*, %struct.generator** %8, align 8
  %19 = getelementptr inbounds %struct.generator, %struct.generator* %18, i32 0, i32 5
  %20 = load i32*, i32** %19, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @pg_strcasecmp(i32* %20, i8* %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %29

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.generator*, %struct.generator** %8, align 8
  %28 = getelementptr inbounds %struct.generator, %struct.generator* %27, i32 1
  store %struct.generator* %28, %struct.generator** %8, align 8
  br label %12

29:                                               ; preds = %24, %12
  %30 = load %struct.generator*, %struct.generator** %8, align 8
  %31 = getelementptr inbounds %struct.generator, %struct.generator* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @PXE_UNKNOWN_SALT_ALGO, align 4
  store i32 %35, i32* %4, align 4
  br label %93

36:                                               ; preds = %29
  %37 = load %struct.generator*, %struct.generator** %8, align 8
  %38 = getelementptr inbounds %struct.generator, %struct.generator* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %36
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load %struct.generator*, %struct.generator** %8, align 8
  %46 = getelementptr inbounds %struct.generator, %struct.generator* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %44, %41
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.generator*, %struct.generator** %8, align 8
  %51 = getelementptr inbounds %struct.generator, %struct.generator* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.generator*, %struct.generator** %8, align 8
  %57 = getelementptr inbounds %struct.generator, %struct.generator* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp sgt i32 %55, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54, %48
  %61 = load i32, i32* @PXE_BAD_SALT_ROUNDS, align 4
  store i32 %61, i32* %4, align 4
  br label %93

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %36
  %64 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %65 = load %struct.generator*, %struct.generator** %8, align 8
  %66 = getelementptr inbounds %struct.generator, %struct.generator* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @pg_strong_random(i8* %64, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %63
  %71 = load i32, i32* @PXE_NO_RANDOM, align 4
  store i32 %71, i32* %4, align 4
  br label %93

72:                                               ; preds = %63
  %73 = load %struct.generator*, %struct.generator** %8, align 8
  %74 = getelementptr inbounds %struct.generator, %struct.generator* %73, i32 0, i32 3
  %75 = load i8* (i32, i8*, i32, i8*, i32)*, i8* (i32, i8*, i32, i8*, i32)** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %78 = load %struct.generator*, %struct.generator** %8, align 8
  %79 = getelementptr inbounds %struct.generator, %struct.generator* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = load i32, i32* @PX_MAX_SALT_LEN, align 4
  %83 = call i8* %75(i32 %76, i8* %77, i32 %80, i8* %81, i32 %82)
  store i8* %83, i8** %9, align 8
  %84 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %85 = call i32 @px_memset(i8* %84, i32 0, i32 16)
  %86 = load i8*, i8** %9, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %72
  %89 = load i32, i32* @PXE_BAD_SALT_ROUNDS, align 4
  store i32 %89, i32* %4, align 4
  br label %93

90:                                               ; preds = %72
  %91 = load i8*, i8** %9, align 8
  %92 = call i32 @strlen(i8* %91)
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %90, %88, %70, %60, %34
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i64 @pg_strcasecmp(i32*, i8*) #1

declare dso_local i32 @pg_strong_random(i8*, i32) #1

declare dso_local i32 @px_memset(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
