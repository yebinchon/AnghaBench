; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_publication.c_GetPublicationByName.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_publication.c_GetPublicationByName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PUBLICATIONNAME = common dso_local global i32 0, align 4
@Anum_pg_publication_oid = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"publication \22%s\22 does not exist\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @GetPublicationByName(i8* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @PUBLICATIONNAME, align 4
  %8 = load i32, i32* @Anum_pg_publication_oid, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @CStringGetDatum(i8* %9)
  %11 = call i32 @GetSysCacheOid1(i32 %7, i32 %8, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @OidIsValid(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32* null, i32** %3, align 8
  br label %29

19:                                               ; preds = %15
  %20 = load i32, i32* @ERROR, align 4
  %21 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %22 = call i32 @errcode(i32 %21)
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = call i32 @ereport(i32 %20, i32 %24)
  br label %26

26:                                               ; preds = %19, %2
  %27 = load i32, i32* %6, align 4
  %28 = call i32* @GetPublication(i32 %27)
  store i32* %28, i32** %3, align 8
  br label %29

29:                                               ; preds = %26, %18
  %30 = load i32*, i32** %3, align 8
  ret i32* %30
}

declare dso_local i32 @GetSysCacheOid1(i32, i32, i32) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32* @GetPublication(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
