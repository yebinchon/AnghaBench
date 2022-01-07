; ModuleID = '/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_inrule.c'
source_filename = "/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_inrule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rule = type { i8*, i8*, i32, i32, i32, i32 }

@inrule.r = internal global %struct.rule zeroinitializer, align 8
@RULE_FIELDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"wrong number of fields on Rule line\00", align 1
@RF_NAME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid rule name \22%s\22\00", align 1
@filename = common dso_local global i32 0, align 4
@linenum = common dso_local global i32 0, align 4
@RF_SAVE = common dso_local global i64 0, align 8
@RF_LOYEAR = common dso_local global i64 0, align 8
@RF_HIYEAR = common dso_local global i64 0, align 8
@RF_COMMAND = common dso_local global i64 0, align 8
@RF_MONTH = common dso_local global i64 0, align 8
@RF_DAY = common dso_local global i64 0, align 8
@RF_TOD = common dso_local global i64 0, align 8
@RF_ABBRVAR = common dso_local global i64 0, align 8
@max_abbrvar_len = common dso_local global i64 0, align 8
@rules = common dso_local global %struct.rule* null, align 8
@nrules = common dso_local global i32 0, align 4
@nrules_alloc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32)* @inrule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inrule(i8** %0, i32 %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @RULE_FIELDS, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 (i32, ...) @error(i32 %9)
  br label %85

11:                                               ; preds = %2
  %12 = load i8**, i8*** %3, align 8
  %13 = load i64, i64* @RF_NAME, align 8
  %14 = getelementptr inbounds i8*, i8** %12, i64 %13
  %15 = load i8*, i8** %14, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  switch i32 %17, label %25 [
    i32 0, label %18
    i32 32, label %18
    i32 12, label %18
    i32 10, label %18
    i32 13, label %18
    i32 9, label %18
    i32 11, label %18
    i32 43, label %18
    i32 45, label %18
    i32 48, label %18
    i32 49, label %18
    i32 50, label %18
    i32 51, label %18
    i32 52, label %18
    i32 53, label %18
    i32 54, label %18
    i32 55, label %18
    i32 56, label %18
    i32 57, label %18
  ]

18:                                               ; preds = %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11
  %19 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i8**, i8*** %3, align 8
  %21 = load i64, i64* @RF_NAME, align 8
  %22 = getelementptr inbounds i8*, i8** %20, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 (i32, ...) @error(i32 %19, i8* %23)
  br label %85

25:                                               ; preds = %11
  %26 = load i32, i32* @filename, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.rule, %struct.rule* @inrule.r, i32 0, i32 5), align 4
  %27 = load i32, i32* @linenum, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.rule, %struct.rule* @inrule.r, i32 0, i32 4), align 8
  %28 = load i8**, i8*** %3, align 8
  %29 = load i64, i64* @RF_SAVE, align 8
  %30 = getelementptr inbounds i8*, i8** %28, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @getsave(i8* %31, i32* getelementptr inbounds (%struct.rule, %struct.rule* @inrule.r, i32 0, i32 2))
  store i32 %32, i32* getelementptr inbounds (%struct.rule, %struct.rule* @inrule.r, i32 0, i32 3), align 4
  %33 = load i8**, i8*** %3, align 8
  %34 = load i64, i64* @RF_LOYEAR, align 8
  %35 = getelementptr inbounds i8*, i8** %33, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = load i8**, i8*** %3, align 8
  %38 = load i64, i64* @RF_HIYEAR, align 8
  %39 = getelementptr inbounds i8*, i8** %37, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = load i8**, i8*** %3, align 8
  %42 = load i64, i64* @RF_COMMAND, align 8
  %43 = getelementptr inbounds i8*, i8** %41, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = load i8**, i8*** %3, align 8
  %46 = load i64, i64* @RF_MONTH, align 8
  %47 = getelementptr inbounds i8*, i8** %45, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = load i8**, i8*** %3, align 8
  %50 = load i64, i64* @RF_DAY, align 8
  %51 = getelementptr inbounds i8*, i8** %49, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = load i8**, i8*** %3, align 8
  %54 = load i64, i64* @RF_TOD, align 8
  %55 = getelementptr inbounds i8*, i8** %53, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @rulesub(%struct.rule* @inrule.r, i8* %36, i8* %40, i8* %44, i8* %48, i8* %52, i8* %56)
  %58 = load i8**, i8*** %3, align 8
  %59 = load i64, i64* @RF_NAME, align 8
  %60 = getelementptr inbounds i8*, i8** %58, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = call i8* @ecpyalloc(i8* %61)
  store i8* %62, i8** getelementptr inbounds (%struct.rule, %struct.rule* @inrule.r, i32 0, i32 1), align 8
  %63 = load i8**, i8*** %3, align 8
  %64 = load i64, i64* @RF_ABBRVAR, align 8
  %65 = getelementptr inbounds i8*, i8** %63, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = call i8* @ecpyalloc(i8* %66)
  store i8* %67, i8** getelementptr inbounds (%struct.rule, %struct.rule* @inrule.r, i32 0, i32 0), align 8
  %68 = load i64, i64* @max_abbrvar_len, align 8
  %69 = load i8*, i8** getelementptr inbounds (%struct.rule, %struct.rule* @inrule.r, i32 0, i32 0), align 8
  %70 = call i64 @strlen(i8* %69)
  %71 = icmp slt i64 %68, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %25
  %73 = load i8*, i8** getelementptr inbounds (%struct.rule, %struct.rule* @inrule.r, i32 0, i32 0), align 8
  %74 = call i64 @strlen(i8* %73)
  store i64 %74, i64* @max_abbrvar_len, align 8
  br label %75

75:                                               ; preds = %72, %25
  %76 = load %struct.rule*, %struct.rule** @rules, align 8
  %77 = load i32, i32* @nrules, align 4
  %78 = call %struct.rule* @growalloc(%struct.rule* %76, i32 32, i32 %77, i32* @nrules_alloc)
  store %struct.rule* %78, %struct.rule** @rules, align 8
  %79 = load %struct.rule*, %struct.rule** @rules, align 8
  %80 = load i32, i32* @nrules, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* @nrules, align 4
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds %struct.rule, %struct.rule* %79, i64 %82
  %84 = bitcast %struct.rule* %83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %84, i8* align 8 bitcast (%struct.rule* @inrule.r to i8*), i64 32, i1 false)
  br label %85

85:                                               ; preds = %75, %18, %8
  ret void
}

declare dso_local i32 @error(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @getsave(i8*, i32*) #1

declare dso_local i32 @rulesub(%struct.rule*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i8* @ecpyalloc(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.rule* @growalloc(%struct.rule*, i32, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
