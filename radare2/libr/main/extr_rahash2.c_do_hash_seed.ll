; ModuleID = '/home/carl/AnghaBench/radare2/libr/main/extr_rahash2.c_do_hash_seed.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/main/extr_rahash2.c_do_hash_seed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32* }

@_s = common dso_local global %struct.TYPE_3__* null, align 8
@s = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"s:\00", align 1
@.str.2 = private unnamed_addr constant [94 x i8] c"Warning: This is not an hexpair, assuming a string, prefix it with 's:' to skip this message.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @do_hash_seed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_hash_seed(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  store i8* %4, i8** %3, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** @_s, align 8
  br label %72

8:                                                ; preds = %1
  store %struct.TYPE_3__* @s, %struct.TYPE_3__** @_s, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = call i64 @r_stdin_slurp(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @s, i32 0, i32 0))
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @s, i32 0, i32 2), align 8
  br label %72

15:                                               ; preds = %8
  %16 = load i8*, i8** %2, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 64
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load i8*, i8** %2, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = call i64 @r_file_slurp(i8* %23, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @s, i32 0, i32 0))
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @s, i32 0, i32 2), align 8
  br label %72

26:                                               ; preds = %15
  %27 = load i8*, i8** %2, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = add nsw i32 %28, 128
  %30 = call i64 @malloc(i32 %29)
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @s, i32 0, i32 2), align 8
  %32 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @s, i32 0, i32 2), align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  store %struct.TYPE_3__* null, %struct.TYPE_3__** @_s, align 8
  br label %72

35:                                               ; preds = %26
  %36 = load i8*, i8** %2, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 94
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @s, i32 0, i32 1), align 4
  %41 = load i8*, i8** %3, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %3, align 8
  br label %44

43:                                               ; preds = %35
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @s, i32 0, i32 1), align 4
  br label %44

44:                                               ; preds = %43, %40
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 @strncmp(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @s, i32 0, i32 2), align 8
  %50 = bitcast i32* %49 to i8*
  %51 = load i8*, i8** %3, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 2
  %53 = call i32 @strcpy(i8* %50, i8* %52)
  %54 = load i8*, i8** %3, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 2
  %56 = call i32 @strlen(i8* %55)
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @s, i32 0, i32 0), align 8
  br label %72

57:                                               ; preds = %44
  %58 = load i8*, i8** %3, align 8
  %59 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @s, i32 0, i32 2), align 8
  %60 = call i32 @r_hex_str2bin(i8* %58, i32* %59)
  store i32 %60, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @s, i32 0, i32 0), align 8
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @s, i32 0, i32 0), align 8
  %62 = icmp slt i32 %61, 1
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @s, i32 0, i32 2), align 8
  %65 = bitcast i32* %64 to i8*
  %66 = load i8*, i8** %3, align 8
  %67 = call i32 @strcpy(i8* %65, i8* %66)
  %68 = load i8*, i8** %3, align 8
  %69 = call i32 @strlen(i8* %68)
  store i32 %69, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @s, i32 0, i32 0), align 8
  %70 = call i32 @eprintf(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.2, i64 0, i64 0))
  br label %71

71:                                               ; preds = %63, %57
  br label %72

72:                                               ; preds = %7, %12, %21, %34, %71, %48
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @r_stdin_slurp(i32*) #1

declare dso_local i64 @r_file_slurp(i8*, i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @r_hex_str2bin(i8*, i32*) #1

declare dso_local i32 @eprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
