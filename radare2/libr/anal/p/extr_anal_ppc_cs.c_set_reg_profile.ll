; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_ppc_cs.c_set_reg_profile.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_ppc_cs.c_set_reg_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [1784 x i8] c"=PC\09pc\0A=SP\09r1\0A=BP\09r31\0A=SR\09srr1\0A=SN\09r3\0A=A0\09r3\0A=A1\09r4\0A=A2\09r5\0A=A3\09r6\0A=A4\09r7\0A=A5\09r8\0A=A6\09r6\0Agpr\09srr0   .32 0   0\0Agpr\09srr1   .32 4   0\0Agpr\09r0   .32 8   0\0Agpr\09r1   .32 12  0\0Agpr\09r2   .32 16  0\0Agpr\09r3   .32 20  0\0Agpr\09r4   .32 24  0\0Agpr\09r5   .32 28  0\0Agpr\09r6   .32 32  0\0Agpr\09r7   .32 36  0\0Agpr\09r8   .32 40  0\0Agpr\09r9   .32 44  0\0Agpr\09r10 .32 48  0\0Agpr\09r11 .32 52  0\0Agpr\09r12 .32 56  0\0Agpr\09r13 .32 60  0\0Agpr\09r14 .32 64  0\0Agpr\09r15 .32 68  0\0Agpr\09r16 .32 72  0\0Agpr\09r17 .32 76  0\0Agpr\09r18 .32 80  0\0Agpr\09r19 .32 84  0\0Agpr\09r20 .32 88  0\0Agpr\09r21 .32 92  0\0Agpr\09r22 .32 96  0\0Agpr\09r23 .32 100 0\0Agpr\09r24 .32 104 0\0Agpr\09r25 .32 108 0\0Agpr\09r26 .32 112 0\0Agpr\09r27 .32 116 0\0Agpr\09r28 .32 120 0\0Agpr\09r29 .32 124 0\0Agpr\09r30 .32 128 0\0Agpr\09r31 .32 132 0\0Agpr\09lr   .32 136 0\0Agpr\09ctr .32 140 0\0Agpr\09msr .32 144 0\0Agpr\09pc   .32 148 0\0Agpr\09cr  .64 152 0\0Agpr\09cr0 .8  152 0\0Agpr\09cr1 .8  153 0\0Agpr\09cr2 .8  154 0\0Agpr\09cr3 .8  155 0\0Agpr\09cr4 .8  156 0\0Agpr\09cr5 .8  157 0\0Agpr\09cr6 .8  158 0\0Agpr\09cr7 .8  159 0\0Agpr\09xer .32 160 0\0Agpr\09mq   .32 164 0\0Agpr\09fpscr  .32 168 0\0Agpr\09vrsave .32 172 0\0Agpr\09pvr .32 176 0\0Agpr\09dccr   .32 180 0\0Agpr\09iccr   .32 184 0\0Agpr\09dear   .32 188 0\0Agpr\09hid0   .32 192 0\0Agpr\09hid1   .32 196 0\0Agpr\09hid2   .32 200 0\0Agpr\09hid3   .32 204 0\0Agpr\09hid4   .32 208 0\0Agpr\09hid5   .32 212 0\0Agpr\09hid6   .32 216 0\0Agpr\09ibat0  .64 220 0\0Agpr\09ibat1  .64 228 0\0Agpr\09ibat2  .64 236 0\0Agpr\09ibat3  .64 244 0\0Agpr\09ibat0l .32 220 0\0Agpr\09ibat1l .32 228 0\0Agpr\09ibat2l .32 236 0\0Agpr\09ibat3l .32 244 0\0Agpr\09ibat0u .32 224 0\0Agpr\09ibat1u .32 232 0\0Agpr\09ibat2u .32 240 0\0Agpr\09ibat3u .32 248 0\0Agpr\09dbat0  .64 256 0\0Agpr\09dbat1  .64 264 0\0Agpr\09dbat2  .64 272 0\0Agpr\09dbat3  .64 280 0\0Agpr\09dbat0l .32 256 0\0Agpr\09dbat1l .32 264 0\0Agpr\09dbat2l .32 272 0\0Agpr\09dbat3l .32 280 0\0Agpr\09dbat0u .32 260 0\0Agpr\09dbat1u .32 268 0\0Agpr\09dbat2u .32 276 0\0Agpr\09dbat3u .32 284 0\0Agpr\09mask   .32 288 0\0A\00", align 1
@.str.1 = private unnamed_addr constant [1769 x i8] c"=PC\09pc\0A=SP\09r1\0A=SR\09srr1\0A=A0\09r3\0A=A1\09r4\0A=A2\09r5\0A=A3\09r6\0A=A4\09r7\0A=A5\09r8\0A=A6\09r6\0Agpr\09srr0   .64 0   0\0Agpr\09srr1   .64 8   0\0Agpr\09r0   .64 16  0\0Agpr\09r1   .64 24  0\0Agpr\09r2   .64 32  0\0Agpr\09r3   .64 40  0\0Agpr\09r4   .64 48  0\0Agpr\09r5   .64 56  0\0Agpr\09r6   .64 64  0\0Agpr\09r7   .64 72  0\0Agpr\09r8   .64 80  0\0Agpr\09r9   .64 88  0\0Agpr\09r10 .64 96  0\0Agpr\09r11 .64 104 0\0Agpr\09r12 .64 112 0\0Agpr\09r13 .64 120 0\0Agpr\09r14 .64 128 0\0Agpr\09r15 .64 136 0\0Agpr\09r16 .64 144 0\0Agpr\09r17 .64 152 0\0Agpr\09r18 .64 160 0\0Agpr\09r19 .64 168 0\0Agpr\09r20 .64 176 0\0Agpr\09r21 .64 184 0\0Agpr\09r22 .64 192 0\0Agpr\09r23 .64 200 0\0Agpr\09r24 .64 208 0\0Agpr\09r25 .64 216 0\0Agpr\09r26 .64 224 0\0Agpr\09r27 .64 232 0\0Agpr\09r28 .64 240 0\0Agpr\09r29 .64 248 0\0Agpr\09r30 .64 256 0\0Agpr\09r31 .64 264 0\0Agpr\09lr   .64 272 0\0Agpr\09ctr .64 280 0\0Agpr\09msr .64 288 0\0Agpr\09pc   .64 296 0\0Agpr\09cr  .64 304 0\0Agpr\09cr0 .8  304 0\0Agpr\09cr1 .8  305 0\0Agpr\09cr2 .8  306 0\0Agpr\09cr3 .8  307 0\0Agpr\09cr4 .8  308 0\0Agpr\09cr5 .8  309 0\0Agpr\09cr6 .8  310 0\0Agpr\09cr7 .8  311 0\0Agpr\09xer .64 312 0\0Agpr\09mq   .64 320 0\0Agpr\09fpscr  .64 328 0\0Agpr\09vrsave .64 336 0\0Agpr\09pvr .64 344 0\0Agpr\09dccr   .32 352 0\0Agpr\09iccr   .32 356 0\0Agpr\09dear   .32 360 0\0Agpr\09hid0   .64 364 0\0Agpr\09hid1   .64 372 0\0Agpr\09hid2   .64 380 0\0Agpr\09hid3   .64 388 0\0Agpr\09hid4   .64 396 0\0Agpr\09hid5   .64 404 0\0Agpr\09hid6   .64 412 0\0Agpr\09ibat0  .64 420 0\0Agpr\09ibat1  .64 428 0\0Agpr\09ibat2  .64 436 0\0Agpr\09ibat3  .64 444 0\0Agpr\09ibat0l .32 420 0\0Agpr\09ibat1l .32 428 0\0Agpr\09ibat2l .32 436 0\0Agpr\09ibat3l .32 444 0\0Agpr\09ibat0u .32 424 0\0Agpr\09ibat1u .32 432 0\0Agpr\09ibat2u .32 440 0\0Agpr\09ibat3u .32 448 0\0Agpr\09dbat0  .64 456 0\0Agpr\09dbat1  .64 464 0\0Agpr\09dbat2  .64 472 0\0Agpr\09dbat3  .64 480 0\0Agpr\09dbat0l .32 456 0\0Agpr\09dbat1l .32 464 0\0Agpr\09dbat2l .32 472 0\0Agpr\09dbat3l .32 480 0\0Agpr\09dbat0u .32 460 0\0Agpr\09dbat1u .32 468 0\0Agpr\09dbat2u .32 476 0\0Agpr\09dbat3u .32 484 0\0Agpr\09mask   .64 488 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @set_reg_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_reg_profile(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i8* null, i8** %3, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 32
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([1784 x i8], [1784 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %10

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([1769 x i8], [1769 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %10

10:                                               ; preds = %9, %8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @r_reg_set_profile_string(i32 %13, i8* %14)
  ret i32 %15
}

declare dso_local i32 @r_reg_set_profile_string(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
