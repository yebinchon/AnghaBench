; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.c_set_msglevels.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.c_set_msglevels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*, i8***, %struct.mpv_node*)*, i32 (i8***)*, i32 (i32*, i8*, i8***)* }
%struct.mpv_node = type { i32 }

@m_option_type_keyvalue_list = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@mp_null_log = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.mpv_node*)* @set_msglevels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_msglevels(i32* %0, i8* %1, %struct.mpv_node* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mpv_node*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.mpv_node* %2, %struct.mpv_node** %6, align 8
  store i8** null, i8*** %7, align 8
  %9 = load i32 (i32*, i8***, %struct.mpv_node*)*, i32 (i32*, i8***, %struct.mpv_node*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m_option_type_keyvalue_list, i32 0, i32 0), align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load %struct.mpv_node*, %struct.mpv_node** %6, align 8
  %12 = call i32 %9(i32* %10, i8*** %7, %struct.mpv_node* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* @mp_null_log, align 4
  %17 = load i8**, i8*** %7, align 8
  %18 = call i32 @check_msg_levels(i32 %16, i8** %17)
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %15, %3
  %20 = load i32, i32* %8, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32 (i32*, i8*, i8***)*, i32 (i32*, i8*, i8***)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m_option_type_keyvalue_list, i32 0, i32 2), align 8
  %24 = load i32*, i32** %4, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 %23(i32* %24, i8* %25, i8*** %7)
  br label %27

27:                                               ; preds = %22, %19
  %28 = load i32 (i8***)*, i32 (i8***)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m_option_type_keyvalue_list, i32 0, i32 1), align 8
  %29 = call i32 %28(i8*** %7)
  %30 = load i32, i32* %8, align 4
  ret i32 %30
}

declare dso_local i32 @check_msg_levels(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
