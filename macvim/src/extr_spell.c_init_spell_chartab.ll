; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_spell.c_init_spell_chartab.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_spell.c_init_spell_chartab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32*, i8** }

@FALSE = common dso_local global i32 0, align 4
@did_set_spelltab = common dso_local global i32 0, align 4
@spelltab = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@TRUE = common dso_local global i8* null, align 8
@enc_dbcs = common dso_local global i64 0, align 8
@enc_utf8 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_spell_chartab() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @FALSE, align 4
  store i32 %2, i32* @did_set_spelltab, align 4
  %3 = call i32 @clear_spell_chartab(%struct.TYPE_3__* @spelltab)
  store i32 128, i32* %1, align 4
  br label %4

4:                                                ; preds = %48, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 256
  br i1 %6, label %7, label %51

7:                                                ; preds = %4
  %8 = load i32, i32* %1, align 4
  %9 = call i64 @MB_ISUPPER(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %7
  %12 = load i8*, i8** @TRUE, align 8
  %13 = ptrtoint i8* %12 to i32
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @spelltab, i32 0, i32 0), align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  store i32 %13, i32* %17, align 4
  %18 = load i8*, i8** @TRUE, align 8
  %19 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @spelltab, i32 0, i32 3), align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %19, i64 %21
  store i8* %18, i8** %22, align 8
  %23 = load i32, i32* %1, align 4
  %24 = call i32 @MB_TOLOWER(i32 %23)
  %25 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @spelltab, i32 0, i32 1), align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %24, i32* %28, align 4
  br label %47

29:                                               ; preds = %7
  %30 = load i32, i32* %1, align 4
  %31 = call i64 @MB_ISLOWER(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load i8*, i8** @TRUE, align 8
  %35 = ptrtoint i8* %34 to i32
  %36 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @spelltab, i32 0, i32 0), align 8
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %35, i32* %39, align 4
  %40 = load i32, i32* %1, align 4
  %41 = call i32 @MB_TOUPPER(i32 %40)
  %42 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @spelltab, i32 0, i32 2), align 8
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %41, i32* %45, align 4
  br label %46

46:                                               ; preds = %33, %29
  br label %47

47:                                               ; preds = %46, %11
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %1, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %1, align 4
  br label %4

51:                                               ; preds = %4
  ret void
}

declare dso_local i32 @clear_spell_chartab(%struct.TYPE_3__*) #1

declare dso_local i64 @MB_ISUPPER(i32) #1

declare dso_local i32 @MB_TOLOWER(i32) #1

declare dso_local i64 @MB_ISLOWER(i32) #1

declare dso_local i32 @MB_TOUPPER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
