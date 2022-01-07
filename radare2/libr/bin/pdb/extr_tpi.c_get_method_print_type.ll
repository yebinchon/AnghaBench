; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_tpi.c_get_method_print_type.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_tpi.c_get_method_print_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*, i8**)* }

@.str = private unnamed_addr constant [8 x i8] c"method \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8**)* @get_method_print_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_method_print_type(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32 (%struct.TYPE_3__*, i8**)*, i32 (%struct.TYPE_3__*, i8**)** %12, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = call i32 %13(%struct.TYPE_3__* %14, i8** %6)
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @strlen(i8* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %23, %22
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %20, %2
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, 1
  %28 = call i64 @malloc(i32 %27)
  %29 = inttoptr i64 %28 to i8*
  %30 = load i8**, i8*** %4, align 8
  store i8* %29, i8** %30, align 8
  %31 = load i8**, i8*** %4, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %25
  br label %47

35:                                               ; preds = %25
  %36 = load i8**, i8*** %4, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @strcpy(i8* %37, i8* %38)
  %40 = load i8*, i8** %6, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load i8**, i8*** %4, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @strcat(i8* %44, i8* %45)
  br label %47

47:                                               ; preds = %34, %42, %35
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
