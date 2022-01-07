; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_text-lookup.c_lookup_goto_nextline.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_text-lookup.c_lookup_goto_nextline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lexer = type { i32 }
%struct.strref = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lexer*)* @lookup_goto_nextline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup_goto_nextline(%struct.lexer* %0) #0 {
  %2 = alloca %struct.lexer*, align 8
  %3 = alloca %struct.strref, align 8
  %4 = alloca i32, align 4
  store %struct.lexer* %0, %struct.lexer** %2, align 8
  store i32 1, i32* %4, align 4
  %5 = call i32 @strref_clear(%struct.strref* %3)
  br label %6

6:                                                ; preds = %1, %18
  %7 = load %struct.lexer*, %struct.lexer** %2, align 8
  %8 = call i32 @lookup_gettoken(%struct.lexer* %7, %struct.strref* %3)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  store i32 0, i32* %4, align 4
  br label %19

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.strref, %struct.strref* %3, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 10
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %19

18:                                               ; preds = %11
  br label %6

19:                                               ; preds = %17, %10
  %20 = load i32, i32* %4, align 4
  ret i32 %20
}

declare dso_local i32 @strref_clear(%struct.strref*) #1

declare dso_local i32 @lookup_gettoken(%struct.lexer*, %struct.strref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
