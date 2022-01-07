; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_list.c_corrupt.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_list.c_corrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_node = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%s: prev corrupt in node %p (%u) of %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.list_node*, %struct.list_node*, i32)* @corrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @corrupt(i8* %0, %struct.list_node* %1, %struct.list_node* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.list_node*, align 8
  %7 = alloca %struct.list_node*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.list_node* %1, %struct.list_node** %6, align 8
  store %struct.list_node* %2, %struct.list_node** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %4
  %12 = load i32, i32* @stderr, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = load %struct.list_node*, %struct.list_node** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.list_node*, %struct.list_node** %6, align 8
  %17 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %13, %struct.list_node* %14, i32 %15, %struct.list_node* %16)
  %18 = call i32 (...) @abort() #3
  unreachable

19:                                               ; preds = %4
  ret i8* null
}

declare dso_local i32 @fprintf(i32, i8*, i8*, %struct.list_node*, i32, %struct.list_node*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
