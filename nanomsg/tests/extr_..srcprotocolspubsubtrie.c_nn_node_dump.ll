; ModuleID = '/home/carl/AnghaBench/nanomsg/tests/extr_..srcprotocolspubsubtrie.c_nn_node_dump.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tests/extr_..srcprotocolspubsubtrie.c_nn_node_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_trie_node = type { i32, i32, %struct.TYPE_6__, i32*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [6 x i8] c"NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"===================\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"refcount=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"prefix_len=%d\0A\00", align 1
@NN_TRIE_DENSE_TYPE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"type=dense\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"type=sparse\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"prefix=\22\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"sparse.children=\22\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"dense.min='%c' (%d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"dense.max='%c' (%d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"dense.nbr=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_node_dump(%struct.nn_trie_node* %0, i32 %1) #0 {
  %3 = alloca %struct.nn_trie_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nn_trie_node* %0, %struct.nn_trie_node** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nn_trie_node*, %struct.nn_trie_node** %3, align 8
  %8 = icmp ne %struct.nn_trie_node* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @nn_node_indent(i32 %10)
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %172

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @nn_node_indent(i32 %14)
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @nn_node_indent(i32 %17)
  %19 = load %struct.nn_trie_node*, %struct.nn_trie_node** %3, align 8
  %20 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @nn_node_indent(i32 %24)
  %26 = load %struct.nn_trie_node*, %struct.nn_trie_node** %3, align 8
  %27 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @nn_node_indent(i32 %30)
  %32 = load %struct.nn_trie_node*, %struct.nn_trie_node** %3, align 8
  %33 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @NN_TRIE_DENSE_TYPE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %13
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %41

39:                                               ; preds = %13
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %37
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @nn_node_indent(i32 %42)
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %60, %41
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.nn_trie_node*, %struct.nn_trie_node** %3, align 8
  %48 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %46, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %45
  %52 = load %struct.nn_trie_node*, %struct.nn_trie_node** %3, align 8
  %53 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @nn_node_putchar(i32 %58)
  br label %60

60:                                               ; preds = %51
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %45

63:                                               ; preds = %45
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %65 = load %struct.nn_trie_node*, %struct.nn_trie_node** %3, align 8
  %66 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp sle i32 %67, 8
  br i1 %68, label %69, label %98

69:                                               ; preds = %63
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @nn_node_indent(i32 %70)
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %90, %69
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.nn_trie_node*, %struct.nn_trie_node** %3, align 8
  %76 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %74, %77
  br i1 %78, label %79, label %93

79:                                               ; preds = %73
  %80 = load %struct.nn_trie_node*, %struct.nn_trie_node** %3, align 8
  %81 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @nn_node_putchar(i32 %88)
  br label %90

90:                                               ; preds = %79
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %5, align 4
  br label %73

93:                                               ; preds = %73
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %95 = load %struct.nn_trie_node*, %struct.nn_trie_node** %3, align 8
  %96 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %6, align 4
  br label %150

98:                                               ; preds = %63
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @nn_node_indent(i32 %99)
  %101 = load %struct.nn_trie_node*, %struct.nn_trie_node** %3, align 8
  %102 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = trunc i32 %105 to i8
  %107 = sext i8 %106 to i32
  %108 = load %struct.nn_trie_node*, %struct.nn_trie_node** %3, align 8
  %109 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %107, i32 %112)
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @nn_node_indent(i32 %114)
  %116 = load %struct.nn_trie_node*, %struct.nn_trie_node** %3, align 8
  %117 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = trunc i32 %120 to i8
  %122 = sext i8 %121 to i32
  %123 = load %struct.nn_trie_node*, %struct.nn_trie_node** %3, align 8
  %124 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 %122, i32 %127)
  %129 = load i32, i32* %4, align 4
  %130 = call i32 @nn_node_indent(i32 %129)
  %131 = load %struct.nn_trie_node*, %struct.nn_trie_node** %3, align 8
  %132 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = trunc i64 %135 to i32
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %136)
  %138 = load %struct.nn_trie_node*, %struct.nn_trie_node** %3, align 8
  %139 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.nn_trie_node*, %struct.nn_trie_node** %3, align 8
  %144 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = sub nsw i32 %142, %147
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %6, align 4
  br label %150

150:                                              ; preds = %98, %93
  store i32 0, i32* %5, align 4
  br label %151

151:                                              ; preds = %165, %150
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* %6, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %168

155:                                              ; preds = %151
  %156 = load %struct.nn_trie_node*, %struct.nn_trie_node** %3, align 8
  %157 = getelementptr inbounds %struct.nn_trie_node, %struct.nn_trie_node* %156, i64 1
  %158 = bitcast %struct.nn_trie_node* %157 to %struct.nn_trie_node**
  %159 = load i32, i32* %5, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.nn_trie_node*, %struct.nn_trie_node** %158, i64 %160
  %162 = load %struct.nn_trie_node*, %struct.nn_trie_node** %161, align 8
  %163 = load i32, i32* %4, align 4
  %164 = add nsw i32 %163, 1
  call void @nn_node_dump(%struct.nn_trie_node* %162, i32 %164)
  br label %165

165:                                              ; preds = %155
  %166 = load i32, i32* %5, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %5, align 4
  br label %151

168:                                              ; preds = %151
  %169 = load i32, i32* %4, align 4
  %170 = call i32 @nn_node_indent(i32 %169)
  %171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %172

172:                                              ; preds = %168, %9
  ret void
}

declare dso_local i32 @nn_node_indent(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @nn_node_putchar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
