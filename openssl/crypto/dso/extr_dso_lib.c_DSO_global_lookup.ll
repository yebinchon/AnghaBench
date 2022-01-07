; ModuleID = '/home/carl/AnghaBench/openssl/crypto/dso/extr_dso_lib.c_DSO_global_lookup.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/dso/extr_dso_lib.c_DSO_global_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* (i8*)* }

@default_DSO_meth = common dso_local global %struct.TYPE_4__* null, align 8
@DSO_F_DSO_GLOBAL_LOOKUP = common dso_local global i32 0, align 4
@DSO_R_UNSUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @DSO_global_lookup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @default_DSO_meth, align 8
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %4, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %7 = icmp eq %struct.TYPE_4__* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call %struct.TYPE_4__* (...) @DSO_METHOD_openssl()
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %4, align 8
  br label %10

10:                                               ; preds = %8, %1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i8* (i8*)*, i8* (i8*)** %12, align 8
  %14 = icmp eq i8* (i8*)* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load i32, i32* @DSO_F_DSO_GLOBAL_LOOKUP, align 4
  %17 = load i32, i32* @DSO_R_UNSUPPORTED, align 4
  %18 = call i32 @DSOerr(i32 %16, i32 %17)
  store i8* null, i8** %2, align 8
  br label %25

19:                                               ; preds = %10
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i8* (i8*)*, i8* (i8*)** %21, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = call i8* %22(i8* %23)
  store i8* %24, i8** %2, align 8
  br label %25

25:                                               ; preds = %19, %15
  %26 = load i8*, i8** %2, align 8
  ret i8* %26
}

declare dso_local %struct.TYPE_4__* @DSO_METHOD_openssl(...) #1

declare dso_local i32 @DSOerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
