; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_orders.c_process_memblt.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_orders.c_process_memblt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [52 x i8] c"MEMBLT(op=0x%x,x=%d,y=%d,cx=%d,cy=%d,id=%d,idx=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_3__*, i32, i32)* @process_memblt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_memblt(i32 %0, %struct.TYPE_3__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = and i32 %10, 1
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %4
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @in_uint8(i32 %14, i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @in_uint8(i32 %19, i32 %22)
  br label %24

24:                                               ; preds = %13, %4
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 2
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 5
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @rdp_in_coord(i32 %29, i32* %31, i32 %32)
  br label %34

34:                                               ; preds = %28, %24
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @rdp_in_coord(i32 %39, i32* %41, i32 %42)
  br label %44

44:                                               ; preds = %38, %34
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @rdp_in_coord(i32 %49, i32* %51, i32 %52)
  br label %54

54:                                               ; preds = %48, %44
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, 16
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @rdp_in_coord(i32 %59, i32* %61, i32 %62)
  br label %64

64:                                               ; preds = %58, %54
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, 32
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @in_uint8(i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %68, %64
  %75 = load i32, i32* %7, align 4
  %76 = and i32 %75, 64
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @rdp_in_coord(i32 %79, i32* %81, i32 %82)
  br label %84

84:                                               ; preds = %78, %74
  %85 = load i32, i32* %7, align 4
  %86 = and i32 %85, 128
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @rdp_in_coord(i32 %89, i32* %91, i32 %92)
  br label %94

94:                                               ; preds = %88, %84
  %95 = load i32, i32* %7, align 4
  %96 = and i32 %95, 256
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %94
  %99 = load i32, i32* %5, align 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 7
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @in_uint16_le(i32 %99, i32 %102)
  br label %104

104:                                              ; preds = %98, %94
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 8
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 7
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = inttoptr i64 %126 to i8*
  %128 = call i32 @DEBUG(i8* %127)
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 8
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 7
  %134 = load i32, i32* %133, align 4
  %135 = call i32* @cache_get_bitmap(i32 %131, i32 %134)
  store i32* %135, i32** %9, align 8
  %136 = load i32*, i32** %9, align 8
  %137 = icmp eq i32* %136, null
  br i1 %137, label %138, label %139

138:                                              ; preds = %104
  br label %164

139:                                              ; preds = %104
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @ROP2_S(i32 %142)
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** %9, align 8
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @ui_memblt(i32 %143, i32 %146, i32 %149, i32 %152, i32 %155, i32* %156, i32 %159, i32 %162)
  br label %164

164:                                              ; preds = %139, %138
  ret void
}

declare dso_local i32 @in_uint8(i32, i32) #1

declare dso_local i32 @rdp_in_coord(i32, i32*, i32) #1

declare dso_local i32 @in_uint16_le(i32, i32) #1

declare dso_local i32 @DEBUG(i8*) #1

declare dso_local i32* @cache_get_bitmap(i32, i32) #1

declare dso_local i32 @ui_memblt(i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ROP2_S(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
