; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_lua.c_set_path.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_lua.c_set_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"package\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"scripts\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c";%s\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"?.lua\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @set_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_path(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = call i8* @talloc_new(i32* null)
  store i8* %8, i8** %3, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @lua_getglobal(i32* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @lua_getfield(i32* %11, i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32*, i32** %2, align 8
  %14 = call i8* @lua_tostring(i32* %13, i32 -1)
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i8*, i8** %4, align 8
  br label %21

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i8* [ %19, %18 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %20 ]
  %23 = call i8* @talloc_strdup(i8* %15, i8* %22)
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = load i32*, i32** %2, align 8
  %26 = call %struct.TYPE_2__* @get_mpctx(i32* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i8** @mp_find_all_config_files(i8* %24, i32 %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i8** %29, i8*** %6, align 8
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %52, %21
  %31 = load i8**, i8*** %6, align 8
  %32 = icmp ne i8** %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i8**, i8*** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br label %40

40:                                               ; preds = %33, %30
  %41 = phi i1 [ false, %30 ], [ %39, %33 ]
  br i1 %41, label %42, label %55

42:                                               ; preds = %40
  %43 = load i8*, i8** %5, align 8
  %44 = load i8*, i8** %3, align 8
  %45 = load i8**, i8*** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @mp_path_join(i8* %44, i8* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %51 = call i8* @talloc_asprintf_append(i8* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  store i8* %51, i8** %5, align 8
  br label %52

52:                                               ; preds = %42
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %30

55:                                               ; preds = %40
  %56 = load i32*, i32** %2, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @lua_pushstring(i32* %56, i8* %57)
  %59 = load i32*, i32** %2, align 8
  %60 = call i32 @lua_setfield(i32* %59, i32 -3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32*, i32** %2, align 8
  %62 = call i32 @lua_pop(i32* %61, i32 2)
  %63 = load i8*, i8** %3, align 8
  %64 = call i32 @talloc_free(i8* %63)
  ret void
}

declare dso_local i8* @talloc_new(i32*) #1

declare dso_local i32 @lua_getglobal(i32*, i8*) #1

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i8* @talloc_strdup(i8*, i8*) #1

declare dso_local i8** @mp_find_all_config_files(i8*, i32, i8*) #1

declare dso_local %struct.TYPE_2__* @get_mpctx(i32*) #1

declare dso_local i8* @talloc_asprintf_append(i8*, i8*, i32) #1

declare dso_local i32 @mp_path_join(i8*, i8*, i8*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @talloc_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
