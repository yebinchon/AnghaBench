; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/hexagon/gnu/extr_hexagon-opc.c_hexagon_extract_operand.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/hexagon/gnu/extr_hexagon-opc.c_hexagon_extract_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8, i32, i32, i32 }

@hexagon_extract_operand.xx = internal global [100 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [54 x i8] c"operand %c wrong number of bits found in %s, %d != %d\00", align 1
@FALSE = common dso_local global i32 0, align 4
@HEXAGON_OPERAND_IS_SIGNED = common dso_local global i32 0, align 4
@HEXAGON_OPERAND_PC_RELATIVE = common dso_local global i32 0, align 4
@HEXAGON_OPERAND_IS_SUBSET = common dso_local global i32 0, align 4
@HEXAGON_OPERAND_IS_PAIR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hexagon_extract_operand(%struct.TYPE_3__* %0, i32 %1, i64 %2, i8* %3, i32* %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8** %5, i8*** %13, align 8
  store i32 0, i32* %14, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i8, i8* %21, align 4
  store i8 %22, i8* %15, align 1
  %23 = load i8*, i8** %11, align 8
  store i8* %23, i8** %16, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i64 @HEXAGON_IS16BITS(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %6
  store i32 32768, i32* %18, align 4
  br label %29

28:                                               ; preds = %6
  store i32 -2147483648, i32* %18, align 4
  br label %29

29:                                               ; preds = %28, %27
  store i32 0, i32* %17, align 4
  br label %30

30:                                               ; preds = %62, %29
  %31 = load i8*, i8** %16, align 8
  %32 = load i8, i8* %31, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %34, label %63

34:                                               ; preds = %30
  %35 = load i8*, i8** %16, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %16, align 8
  %37 = load i8, i8* %35, align 1
  store i8 %37, i8* %19, align 1
  %38 = load i8, i8* %19, align 1
  %39 = call i32 @ISSPACE(i8 signext %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %62, label %41

41:                                               ; preds = %34
  %42 = load i8, i8* %19, align 1
  %43 = sext i8 %42 to i32
  %44 = load i8, i8* %15, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %41
  %48 = load i32, i32* %14, align 4
  %49 = shl i32 %48, 1
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %18, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 1, i32 0
  %56 = add nsw i32 %49, %55
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %17, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %17, align 4
  br label %59

59:                                               ; preds = %47, %41
  %60 = load i32, i32* %18, align 4
  %61 = ashr i32 %60, 1
  store i32 %61, i32* %18, align 4
  br label %62

62:                                               ; preds = %59, %34
  br label %30

63:                                               ; preds = %30
  %64 = load i32, i32* %17, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %64, %67
  br i1 %68, label %69, label %85

69:                                               ; preds = %63
  %70 = load i8**, i8*** %13, align 8
  %71 = icmp ne i8** %70, null
  br i1 %71, label %72, label %83

72:                                               ; preds = %69
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i8, i8* %74, align 4
  %76 = load i8*, i8** %11, align 8
  %77 = load i32, i32* %17, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @sprintf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @hexagon_extract_operand.xx, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8 signext %75, i8* %76, i32 %77, i32 %80)
  %82 = load i8**, i8*** %13, align 8
  store i8* getelementptr inbounds ([100 x i8], [100 x i8]* @hexagon_extract_operand.xx, i64 0, i64 0), i8** %82, align 8
  br label %83

83:                                               ; preds = %72, %69
  %84 = load i32, i32* @FALSE, align 4
  store i32 %84, i32* %7, align 4
  br label %151

85:                                               ; preds = %63
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @HEXAGON_OPERAND_IS_SIGNED, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %114

92:                                               ; preds = %85
  %93 = load i32, i32* %17, align 4
  %94 = icmp ugt i32 %93, 31
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load i32, i32* @FALSE, align 4
  store i32 %96, i32* %7, align 4
  br label %151

97:                                               ; preds = %92
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %17, align 4
  %100 = sub i32 %99, 1
  %101 = shl i32 1, %100
  %102 = and i32 %98, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %97
  %105 = load i32, i32* %17, align 4
  %106 = sub i32 32, %105
  %107 = load i32, i32* %14, align 4
  %108 = shl i32 %107, %106
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %17, align 4
  %110 = sub i32 32, %109
  %111 = load i32, i32* %14, align 4
  %112 = ashr i32 %111, %110
  store i32 %112, i32* %14, align 4
  br label %113

113:                                              ; preds = %104, %97
  br label %114

114:                                              ; preds = %113, %85
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %14, align 4
  %119 = shl i32 %118, %117
  store i32 %119, i32* %14, align 4
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @HEXAGON_OPERAND_PC_RELATIVE, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %114
  %127 = load i64, i64* %10, align 8
  %128 = load i32, i32* %14, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %129, %127
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %14, align 4
  br label %132

132:                                              ; preds = %126, %114
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @HEXAGON_OPERAND_IS_SUBSET, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %132
  %140 = load i32, i32* %14, align 4
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @HEXAGON_OPERAND_IS_PAIR, align 4
  %145 = and i32 %143, %144
  %146 = call i32 @HEXAGON_SUBREGS_FROM(i32 %140, i32 %145)
  store i32 %146, i32* %14, align 4
  br label %147

147:                                              ; preds = %139, %132
  %148 = load i32, i32* %14, align 4
  %149 = load i32*, i32** %12, align 8
  store i32 %148, i32* %149, align 4
  %150 = load i32, i32* @TRUE, align 4
  store i32 %150, i32* %7, align 4
  br label %151

151:                                              ; preds = %147, %95, %83
  %152 = load i32, i32* %7, align 4
  ret i32 %152
}

declare dso_local i64 @HEXAGON_IS16BITS(i32) #1

declare dso_local i32 @ISSPACE(i8 signext) #1

declare dso_local i32 @sprintf(i8*, i8*, i8 signext, i8*, i32, i32) #1

declare dso_local i32 @HEXAGON_SUBREGS_FROM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
