; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_hfsplus.c_grub_hfsplus_iterate_dir.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_hfsplus.c_grub_hfsplus_iterate_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.grub_hfsplus_key_internal = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.grub_hfsplus_btnode = type { i32 }
%struct.grub_hfsplus_iterate_dir_closure = type { i32 (i8*, i32, %struct.TYPE_9__*, i8*)*, i32, i8*, %struct.TYPE_9__* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@grub_hfsplus_cmp_catkey = common dso_local global i32 0, align 4
@list_nodes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, {}*, i8*)* @grub_hfsplus_iterate_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_hfsplus_iterate_dir(%struct.TYPE_9__* %0, {}* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca {}*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.grub_hfsplus_key_internal, align 8
  %9 = alloca %struct.grub_hfsplus_btnode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.grub_hfsplus_iterate_dir_closure, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store {}* %1, {}** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.grub_hfsplus_btnode* null, %struct.grub_hfsplus_btnode** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = getelementptr inbounds %struct.grub_hfsplus_key_internal, %struct.grub_hfsplus_key_internal* %8, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = getelementptr inbounds %struct.grub_hfsplus_key_internal, %struct.grub_hfsplus_key_internal* %8, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* @grub_hfsplus_cmp_catkey, align 4
  %24 = call i64 @grub_hfsplus_btree_search(i32* %22, %struct.grub_hfsplus_key_internal* %8, i32 %23, %struct.grub_hfsplus_btnode** %9, i32* %10)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %48

27:                                               ; preds = %3
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = getelementptr inbounds %struct.grub_hfsplus_iterate_dir_closure, %struct.grub_hfsplus_iterate_dir_closure* %11, i32 0, i32 3
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %29, align 8
  %30 = load {}*, {}** %6, align 8
  %31 = bitcast {}* %30 to i32 (i8*, i32, %struct.TYPE_9__*, i8*)*
  %32 = getelementptr inbounds %struct.grub_hfsplus_iterate_dir_closure, %struct.grub_hfsplus_iterate_dir_closure* %11, i32 0, i32 0
  store i32 (i8*, i32, %struct.TYPE_9__*, i8*)* %31, i32 (i8*, i32, %struct.TYPE_9__*, i8*)** %32, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds %struct.grub_hfsplus_iterate_dir_closure, %struct.grub_hfsplus_iterate_dir_closure* %11, i32 0, i32 2
  store i8* %33, i8** %34, align 8
  %35 = getelementptr inbounds %struct.grub_hfsplus_iterate_dir_closure, %struct.grub_hfsplus_iterate_dir_closure* %11, i32 0, i32 1
  store i32 0, i32* %35, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load %struct.grub_hfsplus_btnode*, %struct.grub_hfsplus_btnode** %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @list_nodes, align 4
  %43 = call i32 @grub_hfsplus_btree_iterate_node(i32* %39, %struct.grub_hfsplus_btnode* %40, i32 %41, i32 %42, %struct.grub_hfsplus_iterate_dir_closure* %11)
  %44 = load %struct.grub_hfsplus_btnode*, %struct.grub_hfsplus_btnode** %9, align 8
  %45 = call i32 @grub_free(%struct.grub_hfsplus_btnode* %44)
  %46 = getelementptr inbounds %struct.grub_hfsplus_iterate_dir_closure, %struct.grub_hfsplus_iterate_dir_closure* %11, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %27, %26
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i64 @grub_hfsplus_btree_search(i32*, %struct.grub_hfsplus_key_internal*, i32, %struct.grub_hfsplus_btnode**, i32*) #1

declare dso_local i32 @grub_hfsplus_btree_iterate_node(i32*, %struct.grub_hfsplus_btnode*, i32, i32, %struct.grub_hfsplus_iterate_dir_closure*) #1

declare dso_local i32 @grub_free(%struct.grub_hfsplus_btnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
