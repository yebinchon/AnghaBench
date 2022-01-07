; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_dl.c_grub_dl_resolve_symbol.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_dl.c_grub_dl_resolve_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, %struct.TYPE_3__* }

@grub_symtab = common dso_local global %struct.TYPE_3__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @grub_dl_resolve_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @grub_dl_resolve_symbol(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @grub_symtab, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @grub_symbol_hash(i8* %6)
  %8 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %5, i64 %7
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %4, align 8
  br label %10

10:                                               ; preds = %25, %1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %29

13:                                               ; preds = %10
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = call i64 @grub_strcmp(i32 %16, i8* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %2, align 8
  br label %30

24:                                               ; preds = %13
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  store %struct.TYPE_3__* %28, %struct.TYPE_3__** %4, align 8
  br label %10

29:                                               ; preds = %10
  store i8* null, i8** %2, align 8
  br label %30

30:                                               ; preds = %29, %20
  %31 = load i8*, i8** %2, align 8
  ret i8* %31
}

declare dso_local i64 @grub_symbol_hash(i8*) #1

declare dso_local i64 @grub_strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
