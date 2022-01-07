; ModuleID = '/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_inlink.c'
source_filename = "/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_inlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link = type { i8*, i8*, i32, i32 }

@LINK_FIELDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"wrong number of fields on Link line\00", align 1
@LF_FROM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"blank FROM field on Link line\00", align 1
@LF_TO = common dso_local global i64 0, align 8
@filename = common dso_local global i32 0, align 4
@linenum = common dso_local global i32 0, align 4
@links = common dso_local global %struct.link* null, align 8
@nlinks = common dso_local global i32 0, align 4
@nlinks_alloc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32)* @inlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inlink(i8** %0, i32 %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.link, align 8
  store i8** %0, i8*** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @LINK_FIELDS, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @error(i32 %10)
  br label %58

12:                                               ; preds = %2
  %13 = load i8**, i8*** %3, align 8
  %14 = load i64, i64* @LF_FROM, align 8
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 @error(i32 %21)
  br label %58

23:                                               ; preds = %12
  %24 = load i8**, i8*** %3, align 8
  %25 = load i64, i64* @LF_TO, align 8
  %26 = getelementptr inbounds i8*, i8** %24, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @namecheck(i8* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  br label %58

31:                                               ; preds = %23
  %32 = load i32, i32* @filename, align 4
  %33 = getelementptr inbounds %struct.link, %struct.link* %5, i32 0, i32 3
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @linenum, align 4
  %35 = getelementptr inbounds %struct.link, %struct.link* %5, i32 0, i32 2
  store i32 %34, i32* %35, align 8
  %36 = load i8**, i8*** %3, align 8
  %37 = load i64, i64* @LF_FROM, align 8
  %38 = getelementptr inbounds i8*, i8** %36, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call i8* @ecpyalloc(i8* %39)
  %41 = getelementptr inbounds %struct.link, %struct.link* %5, i32 0, i32 1
  store i8* %40, i8** %41, align 8
  %42 = load i8**, i8*** %3, align 8
  %43 = load i64, i64* @LF_TO, align 8
  %44 = getelementptr inbounds i8*, i8** %42, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i8* @ecpyalloc(i8* %45)
  %47 = getelementptr inbounds %struct.link, %struct.link* %5, i32 0, i32 0
  store i8* %46, i8** %47, align 8
  %48 = load %struct.link*, %struct.link** @links, align 8
  %49 = load i32, i32* @nlinks, align 4
  %50 = call %struct.link* @growalloc(%struct.link* %48, i32 24, i32 %49, i32* @nlinks_alloc)
  store %struct.link* %50, %struct.link** @links, align 8
  %51 = load %struct.link*, %struct.link** @links, align 8
  %52 = load i32, i32* @nlinks, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* @nlinks, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds %struct.link, %struct.link* %51, i64 %54
  %56 = bitcast %struct.link* %55 to i8*
  %57 = bitcast %struct.link* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 24, i1 false)
  br label %58

58:                                               ; preds = %31, %30, %20, %9
  ret void
}

declare dso_local i32 @error(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @namecheck(i8*) #1

declare dso_local i8* @ecpyalloc(i8*) #1

declare dso_local %struct.link* @growalloc(%struct.link*, i32, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
