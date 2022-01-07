; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/extr_microsoft_demangle.c_parse_microsoft_rtti_mangled_name.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/extr_microsoft_demangle.c_parse_microsoft_rtti_mangled_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@eDemanglerErrOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"AT\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"AU\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"AV\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"AW\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@eDemanglerErrUncorrectMangledSymbol = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**)* @parse_microsoft_rtti_mangled_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_microsoft_rtti_mangled_name(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  %9 = load i32, i32* @eDemanglerErrOK, align 4
  store i32 %9, i32* %5, align 4
  store i8* null, i8** %6, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %34

14:                                               ; preds = %2
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @strncmp(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %33

19:                                               ; preds = %14
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @strncmp(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 2)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  br label %32

24:                                               ; preds = %19
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @strncmp(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 2)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %6, align 8
  br label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @eDemanglerErrUncorrectMangledSymbol, align 4
  store i32 %30, i32* %5, align 4
  br label %52

31:                                               ; preds = %28
  br label %32

32:                                               ; preds = %31, %23
  br label %33

33:                                               ; preds = %32, %18
  br label %34

34:                                               ; preds = %33, %13
  %35 = call i32 @init_type_code_str_struct(%struct.TYPE_4__* %7)
  %36 = load i8*, i8** %3, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 2
  %38 = call i32 @get_namespace_and_name(i8* %37, %struct.TYPE_4__* %7, i32* null)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @eDemanglerErrUncorrectMangledSymbol, align 4
  store i32 %42, i32* %5, align 4
  br label %52

43:                                               ; preds = %34
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @r_str_newf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %44, i32 %46)
  %48 = load i8**, i8*** %4, align 8
  store i8* %47, i8** %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @free(i32 %50)
  br label %52

52:                                               ; preds = %43, %41, %29
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @init_type_code_str_struct(%struct.TYPE_4__*) #1

declare dso_local i32 @get_namespace_and_name(i8*, %struct.TYPE_4__*, i32*) #1

declare dso_local i8* @r_str_newf(i8*, i8*, i32) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
