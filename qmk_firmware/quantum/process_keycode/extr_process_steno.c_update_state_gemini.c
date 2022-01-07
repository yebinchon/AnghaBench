
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int* chord ;
 int* state ;

__attribute__((used)) static bool update_state_gemini(uint8_t key, bool press) {
    int idx = key / 7;
    uint8_t bit = 1 << (6 - (key % 7));
    if (press) {
        state[idx] |= bit;
        chord[idx] |= bit;
    } else {
        state[idx] &= ~bit;
    }
    return 0;
}
